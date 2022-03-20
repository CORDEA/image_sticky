import 'dart:async';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config_repository.dart';
import 'image_repository.dart';

part 'home_view_model.freezed.dart';

final homeViewModelProvider = ChangeNotifierProvider(
  (ref) => HomeViewModel(
    ref.read(configRepositoryProvider),
    ref.read(imageRepositoryProvider),
  ).._init(),
);

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._configRepository, this._imageRepository);

  final ConfigRepository _configRepository;
  final ImageRepository _imageRepository;

  final _event = StreamController<HomeUiEvent>();

  Stream<HomeUiEvent> get event => _event.stream;

  int _axisCount = 2;

  int get axisCount => _axisCount;

  List<HomeItemViewModel> _items = [];

  List<HomeItemViewModel> get items => _items;

  Future<void> _init() async {
    final images = await _imageRepository.find();
    _items =
        images.map((e) => HomeItemViewModel(path: e)).toList(growable: false);
    final config = await _configRepository.find();
    if (config != null) {
      _axisCount = config.axisCount;
    }
    notifyListeners();
  }

  void onAddTapped() {
    _event.add(HomeUiEvent.openPicker());
  }

  Future<void> onAxisCountIncreased() async {
    _axisCount += 1;
    await _configRepository
        .insert(AppConfig.empty.copyWith(axisCount: _axisCount));
    notifyListeners();
  }

  Future<void> onAxisCountDecreased() async {
    if (_axisCount <= 1) {
      return;
    }
    _axisCount -= 1;
    await _configRepository
        .insert(AppConfig.empty.copyWith(axisCount: _axisCount));
    notifyListeners();
  }

  void onWindowSizeSet() {}

  Future<void> onImagePicked(XFile? file) async {
    if (file == null) {
      return;
    }
    final viewModel = HomeItemViewModel(path: file.path);
    if (_items.contains(viewModel)) {
      return;
    }
    await _imageRepository.insert(file.path);
    _items += [viewModel];
    notifyListeners();
  }
}

@freezed
class HomeUiEvent with _$HomeUiEvent {
  factory HomeUiEvent.openPicker() = _OpenPicker;

  factory HomeUiEvent.empty() = _Empty;
}

@freezed
class HomeItemViewModel with _$HomeItemViewModel {
  factory HomeItemViewModel({required String path}) = _HomeItemViewModel;
}
