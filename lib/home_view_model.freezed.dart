// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUiEventTearOff {
  const _$HomeUiEventTearOff();

  _OpenPicker openPicker() {
    return _OpenPicker();
  }

  _OpenContextMenu openContextMenu(HomeItemViewModel viewModel) {
    return _OpenContextMenu(
      viewModel,
    );
  }

  _UpdateWindow updateWindow(Rect rect) {
    return _UpdateWindow(
      rect,
    );
  }

  _Empty empty() {
    return _Empty();
  }
}

/// @nodoc
const $HomeUiEvent = _$HomeUiEventTearOff();

/// @nodoc
mixin _$HomeUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPicker,
    required TResult Function(HomeItemViewModel viewModel) openContextMenu,
    required TResult Function(Rect rect) updateWindow,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenPicker value) openPicker,
    required TResult Function(_OpenContextMenu value) openContextMenu,
    required TResult Function(_UpdateWindow value) updateWindow,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiEventCopyWith<$Res> {
  factory $HomeUiEventCopyWith(
          HomeUiEvent value, $Res Function(HomeUiEvent) then) =
      _$HomeUiEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeUiEventCopyWithImpl<$Res> implements $HomeUiEventCopyWith<$Res> {
  _$HomeUiEventCopyWithImpl(this._value, this._then);

  final HomeUiEvent _value;
  // ignore: unused_field
  final $Res Function(HomeUiEvent) _then;
}

/// @nodoc
abstract class _$OpenPickerCopyWith<$Res> {
  factory _$OpenPickerCopyWith(
          _OpenPicker value, $Res Function(_OpenPicker) then) =
      __$OpenPickerCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenPickerCopyWithImpl<$Res> extends _$HomeUiEventCopyWithImpl<$Res>
    implements _$OpenPickerCopyWith<$Res> {
  __$OpenPickerCopyWithImpl(
      _OpenPicker _value, $Res Function(_OpenPicker) _then)
      : super(_value, (v) => _then(v as _OpenPicker));

  @override
  _OpenPicker get _value => super._value as _OpenPicker;
}

/// @nodoc

class _$_OpenPicker with DiagnosticableTreeMixin implements _OpenPicker {
  _$_OpenPicker();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiEvent.openPicker()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeUiEvent.openPicker'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OpenPicker);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPicker,
    required TResult Function(HomeItemViewModel viewModel) openContextMenu,
    required TResult Function(Rect rect) updateWindow,
    required TResult Function() empty,
  }) {
    return openPicker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
  }) {
    return openPicker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (openPicker != null) {
      return openPicker();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenPicker value) openPicker,
    required TResult Function(_OpenContextMenu value) openContextMenu,
    required TResult Function(_UpdateWindow value) updateWindow,
    required TResult Function(_Empty value) empty,
  }) {
    return openPicker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
  }) {
    return openPicker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (openPicker != null) {
      return openPicker(this);
    }
    return orElse();
  }
}

abstract class _OpenPicker implements HomeUiEvent {
  factory _OpenPicker() = _$_OpenPicker;
}

/// @nodoc
abstract class _$OpenContextMenuCopyWith<$Res> {
  factory _$OpenContextMenuCopyWith(
          _OpenContextMenu value, $Res Function(_OpenContextMenu) then) =
      __$OpenContextMenuCopyWithImpl<$Res>;
  $Res call({HomeItemViewModel viewModel});

  $HomeItemViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$OpenContextMenuCopyWithImpl<$Res>
    extends _$HomeUiEventCopyWithImpl<$Res>
    implements _$OpenContextMenuCopyWith<$Res> {
  __$OpenContextMenuCopyWithImpl(
      _OpenContextMenu _value, $Res Function(_OpenContextMenu) _then)
      : super(_value, (v) => _then(v as _OpenContextMenu));

  @override
  _OpenContextMenu get _value => super._value as _OpenContextMenu;

  @override
  $Res call({
    Object? viewModel = freezed,
  }) {
    return _then(_OpenContextMenu(
      viewModel == freezed
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as HomeItemViewModel,
    ));
  }

  @override
  $HomeItemViewModelCopyWith<$Res> get viewModel {
    return $HomeItemViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$_OpenContextMenu
    with DiagnosticableTreeMixin
    implements _OpenContextMenu {
  _$_OpenContextMenu(this.viewModel);

  @override
  final HomeItemViewModel viewModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiEvent.openContextMenu(viewModel: $viewModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeUiEvent.openContextMenu'))
      ..add(DiagnosticsProperty('viewModel', viewModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenContextMenu &&
            const DeepCollectionEquality().equals(other.viewModel, viewModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(viewModel));

  @JsonKey(ignore: true)
  @override
  _$OpenContextMenuCopyWith<_OpenContextMenu> get copyWith =>
      __$OpenContextMenuCopyWithImpl<_OpenContextMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPicker,
    required TResult Function(HomeItemViewModel viewModel) openContextMenu,
    required TResult Function(Rect rect) updateWindow,
    required TResult Function() empty,
  }) {
    return openContextMenu(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
  }) {
    return openContextMenu?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (openContextMenu != null) {
      return openContextMenu(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenPicker value) openPicker,
    required TResult Function(_OpenContextMenu value) openContextMenu,
    required TResult Function(_UpdateWindow value) updateWindow,
    required TResult Function(_Empty value) empty,
  }) {
    return openContextMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
  }) {
    return openContextMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (openContextMenu != null) {
      return openContextMenu(this);
    }
    return orElse();
  }
}

abstract class _OpenContextMenu implements HomeUiEvent {
  factory _OpenContextMenu(HomeItemViewModel viewModel) = _$_OpenContextMenu;

  HomeItemViewModel get viewModel;
  @JsonKey(ignore: true)
  _$OpenContextMenuCopyWith<_OpenContextMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateWindowCopyWith<$Res> {
  factory _$UpdateWindowCopyWith(
          _UpdateWindow value, $Res Function(_UpdateWindow) then) =
      __$UpdateWindowCopyWithImpl<$Res>;
  $Res call({Rect rect});
}

/// @nodoc
class __$UpdateWindowCopyWithImpl<$Res> extends _$HomeUiEventCopyWithImpl<$Res>
    implements _$UpdateWindowCopyWith<$Res> {
  __$UpdateWindowCopyWithImpl(
      _UpdateWindow _value, $Res Function(_UpdateWindow) _then)
      : super(_value, (v) => _then(v as _UpdateWindow));

  @override
  _UpdateWindow get _value => super._value as _UpdateWindow;

  @override
  $Res call({
    Object? rect = freezed,
  }) {
    return _then(_UpdateWindow(
      rect == freezed
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as Rect,
    ));
  }
}

/// @nodoc

class _$_UpdateWindow with DiagnosticableTreeMixin implements _UpdateWindow {
  _$_UpdateWindow(this.rect);

  @override
  final Rect rect;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiEvent.updateWindow(rect: $rect)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeUiEvent.updateWindow'))
      ..add(DiagnosticsProperty('rect', rect));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateWindow &&
            const DeepCollectionEquality().equals(other.rect, rect));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rect));

  @JsonKey(ignore: true)
  @override
  _$UpdateWindowCopyWith<_UpdateWindow> get copyWith =>
      __$UpdateWindowCopyWithImpl<_UpdateWindow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPicker,
    required TResult Function(HomeItemViewModel viewModel) openContextMenu,
    required TResult Function(Rect rect) updateWindow,
    required TResult Function() empty,
  }) {
    return updateWindow(rect);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
  }) {
    return updateWindow?.call(rect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (updateWindow != null) {
      return updateWindow(rect);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenPicker value) openPicker,
    required TResult Function(_OpenContextMenu value) openContextMenu,
    required TResult Function(_UpdateWindow value) updateWindow,
    required TResult Function(_Empty value) empty,
  }) {
    return updateWindow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
  }) {
    return updateWindow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (updateWindow != null) {
      return updateWindow(this);
    }
    return orElse();
  }
}

abstract class _UpdateWindow implements HomeUiEvent {
  factory _UpdateWindow(Rect rect) = _$_UpdateWindow;

  Rect get rect;
  @JsonKey(ignore: true)
  _$UpdateWindowCopyWith<_UpdateWindow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$HomeUiEventCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty with DiagnosticableTreeMixin implements _Empty {
  _$_Empty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiEvent.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeUiEvent.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPicker,
    required TResult Function(HomeItemViewModel viewModel) openContextMenu,
    required TResult Function(Rect rect) updateWindow,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPicker,
    TResult Function(HomeItemViewModel viewModel)? openContextMenu,
    TResult Function(Rect rect)? updateWindow,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenPicker value) openPicker,
    required TResult Function(_OpenContextMenu value) openContextMenu,
    required TResult Function(_UpdateWindow value) updateWindow,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
    TResult Function(_OpenContextMenu value)? openContextMenu,
    TResult Function(_UpdateWindow value)? updateWindow,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements HomeUiEvent {
  factory _Empty() = _$_Empty;
}

/// @nodoc
class _$HomeItemViewModelTearOff {
  const _$HomeItemViewModelTearOff();

  _HomeItemViewModel call({required String path}) {
    return _HomeItemViewModel(
      path: path,
    );
  }
}

/// @nodoc
const $HomeItemViewModel = _$HomeItemViewModelTearOff();

/// @nodoc
mixin _$HomeItemViewModel {
  String get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeItemViewModelCopyWith<HomeItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeItemViewModelCopyWith<$Res> {
  factory $HomeItemViewModelCopyWith(
          HomeItemViewModel value, $Res Function(HomeItemViewModel) then) =
      _$HomeItemViewModelCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$HomeItemViewModelCopyWithImpl<$Res>
    implements $HomeItemViewModelCopyWith<$Res> {
  _$HomeItemViewModelCopyWithImpl(this._value, this._then);

  final HomeItemViewModel _value;
  // ignore: unused_field
  final $Res Function(HomeItemViewModel) _then;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeItemViewModelCopyWith<$Res>
    implements $HomeItemViewModelCopyWith<$Res> {
  factory _$HomeItemViewModelCopyWith(
          _HomeItemViewModel value, $Res Function(_HomeItemViewModel) then) =
      __$HomeItemViewModelCopyWithImpl<$Res>;
  @override
  $Res call({String path});
}

/// @nodoc
class __$HomeItemViewModelCopyWithImpl<$Res>
    extends _$HomeItemViewModelCopyWithImpl<$Res>
    implements _$HomeItemViewModelCopyWith<$Res> {
  __$HomeItemViewModelCopyWithImpl(
      _HomeItemViewModel _value, $Res Function(_HomeItemViewModel) _then)
      : super(_value, (v) => _then(v as _HomeItemViewModel));

  @override
  _HomeItemViewModel get _value => super._value as _HomeItemViewModel;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_HomeItemViewModel(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeItemViewModel
    with DiagnosticableTreeMixin
    implements _HomeItemViewModel {
  _$_HomeItemViewModel({required this.path});

  @override
  final String path;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeItemViewModel(path: $path)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeItemViewModel'))
      ..add(DiagnosticsProperty('path', path));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeItemViewModel &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$HomeItemViewModelCopyWith<_HomeItemViewModel> get copyWith =>
      __$HomeItemViewModelCopyWithImpl<_HomeItemViewModel>(this, _$identity);
}

abstract class _HomeItemViewModel implements HomeItemViewModel {
  factory _HomeItemViewModel({required String path}) = _$_HomeItemViewModel;

  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$HomeItemViewModelCopyWith<_HomeItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
