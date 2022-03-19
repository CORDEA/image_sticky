import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_view_model.freezed.dart';

final homeViewModelProvider = ChangeNotifierProvider(
  (_) => HomeViewModel(),
);

class HomeViewModel extends ChangeNotifier {
  void onAddTapped() {}
}

@freezed
class HomeUiEvent with _$HomeUiEvent {
  factory HomeUiEvent.openPicker() = _OpenPicker;
}
