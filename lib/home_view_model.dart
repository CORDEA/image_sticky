import 'dart:async';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_view_model.freezed.dart';

final homeViewModelProvider = ChangeNotifierProvider((_) => HomeViewModel());

class HomeViewModel extends ChangeNotifier {
  final _event = StreamController<HomeUiEvent>();

  Stream<HomeUiEvent> get event => _event.stream;

  void onAddTapped() {
    _event.add(HomeUiEvent.openPicker());
  }

  void onImagePicked(XFile? file) {
    if (file == null) {
      return;
    }
  }
}

@freezed
class HomeUiEvent with _$HomeUiEvent {
  factory HomeUiEvent.openPicker() = _OpenPicker;

  factory HomeUiEvent.empty() = _Empty;
}
