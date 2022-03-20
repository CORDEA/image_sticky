import 'dart:async';
import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:window_size/window_size.dart';

import 'home_view_model.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = ref.read(homeViewModelProvider).event.listen((event) {
      event.when(
        openPicker: () async {
          final file = await openFile(acceptedTypeGroups: [
            XTypeGroup(label: 'images', extensions: ['png', 'jpg']),
          ]);
          ref.read(homeViewModelProvider).onImagePicked(file);
        },
        updateWindow: setWindowFrame,
        empty: () {},
      );
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount:
                    ref.watch(homeViewModelProvider.select((v) => v.axisCount)),
                children: ref
                    .watch(homeViewModelProvider.select((v) => v.items))
                    .map((e) => _HomeGridItem(viewModel: e))
                    .toList(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () =>
                        ref.read(homeViewModelProvider).onAddTapped(),
                    icon: const Icon(Icons.add_a_photo_outlined),
                  ),
                  const SizedBox(width: 8),
                  PopupMenuButton<_DropdownMenuItemType>(
                    icon: const Icon(Icons.more_horiz),
                    itemBuilder: (context) => const [
                      PopupMenuItem(
                        child: Text('Increment axis count'),
                        value: _DropdownMenuItemType.incrementAxisCount,
                      ),
                      PopupMenuItem(
                        child: Text('Decrement axis count'),
                        value: _DropdownMenuItemType.decrementAxisCount,
                      ),
                      PopupMenuItem(
                        child: Text('Set windows size'),
                        value: _DropdownMenuItemType.setWindowSize,
                      ),
                    ],
                    onSelected: (type) async {
                      switch (type) {
                        case _DropdownMenuItemType.incrementAxisCount:
                          ref
                              .read(homeViewModelProvider)
                              .onAxisCountIncreased();
                          break;
                        case _DropdownMenuItemType.decrementAxisCount:
                          ref
                              .read(homeViewModelProvider)
                              .onAxisCountDecreased();
                          break;
                        case _DropdownMenuItemType.setWindowSize:
                          ref
                              .read(homeViewModelProvider)
                              .onWindowSizeSet((await getWindowInfo()).frame);
                          break;
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeGridItem extends StatelessWidget {
  const _HomeGridItem({Key? key, required this.viewModel}) : super(key: key);

  final HomeItemViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Image.file(File(viewModel.path));
  }
}

enum _DropdownMenuItemType {
  incrementAxisCount,
  decrementAxisCount,
  setWindowSize,
}
