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
}

/// @nodoc
const $HomeUiEvent = _$HomeUiEventTearOff();

/// @nodoc
mixin _$HomeUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPicker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenPicker value) openPicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
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
    properties..add(DiagnosticsProperty('type', 'HomeUiEvent.openPicker'));
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
  }) {
    return openPicker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPicker,
  }) {
    return openPicker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPicker,
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
  }) {
    return openPicker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
  }) {
    return openPicker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenPicker value)? openPicker,
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
