import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_view_model.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Expanded(child: SizedBox.expand()),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => ref.read(homeViewModelProvider).onAddTapped(),
                icon: const Icon(Icons.add_a_photo_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
