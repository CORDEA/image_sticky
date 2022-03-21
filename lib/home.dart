import 'dart:async';
import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:native_context_menu/native_context_menu.dart';
import 'package:window_size/window_size.dart';

import 'home_view_model.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  static const _itemPadding = 8.0;

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
    final bottomBar = _HomeBottomBar();
    Widget buildContainer(Widget child) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: child),
              Align(
                alignment: Alignment.centerRight,
                child: _HomeBottomBar(),
              ),
            ],
          ),
        ),
      );
    }

    final children = ref
        .watch(homeViewModelProvider.select((v) => v.items))
        .map((e) => _HomeGridItem(viewModel: e))
        .toList();
    if (children.isEmpty) {
      return buildContainer(const Center(child: Text('There are no items.')));
    }

    final count = ref.watch(homeViewModelProvider.select((v) => v.axisCount));
    final size = MediaQuery.of(context).size;
    final idealWidth = (size.width - _itemPadding * (count - 1)) / count;
    final rows = (children.length / count).ceil();
    final idealHeight = (size.height -
            bottomBar.preferredSize.height -
            _itemPadding * (rows - 1)) /
        rows;
    return buildContainer(
      GridView.count(
        crossAxisSpacing: _itemPadding,
        mainAxisSpacing: _itemPadding,
        childAspectRatio: idealWidth / idealHeight,
        crossAxisCount: count,
        children: children,
      ),
    );
  }
}

class _HomeBottomBar extends HookConsumerWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(40);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () => ref.read(homeViewModelProvider).onItemAdded(),
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
                ref.read(homeViewModelProvider).onAxisCountIncreased();
                break;
              case _DropdownMenuItemType.decrementAxisCount:
                ref.read(homeViewModelProvider).onAxisCountDecreased();
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
    );
  }
}

class _HomeGridItem extends HookConsumerWidget {
  const _HomeGridItem({Key? key, required this.viewModel}) : super(key: key);

  final HomeItemViewModel viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ContextMenuRegion(
      onItemSelected: (item) {
        switch (item.action as _ContextMenuItemType) {
          case _ContextMenuItemType.remove:
            ref.read(homeViewModelProvider).onItemRemoved(viewModel);
            break;
        }
      },
      menuItems: [
        MenuItem(
          title: 'Remove',
          action: _ContextMenuItemType.remove,
        ),
      ],
      child: Image.file(
        File(viewModel.path),
        fit: BoxFit.cover,
      ),
    );
  }
}

enum _DropdownMenuItemType {
  incrementAxisCount,
  decrementAxisCount,
  setWindowSize,
}

enum _ContextMenuItemType {
  remove,
}
