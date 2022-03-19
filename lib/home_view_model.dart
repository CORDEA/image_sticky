import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeViewModelProvider = ChangeNotifierProvider(
  (_) => HomeViewModel(),
);

class HomeViewModel extends ChangeNotifier {
  void onAddTapped() {}
}
