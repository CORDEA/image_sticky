// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppConfigTearOff {
  const _$AppConfigTearOff();

  _AppConfig call({required int axisCount, required Rect windowRect}) {
    return _AppConfig(
      axisCount: axisCount,
      windowRect: windowRect,
    );
  }
}

/// @nodoc
const $AppConfig = _$AppConfigTearOff();

/// @nodoc
mixin _$AppConfig {
  int get axisCount => throw _privateConstructorUsedError;
  Rect get windowRect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigCopyWith<AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) then) =
      _$AppConfigCopyWithImpl<$Res>;
  $Res call({int axisCount, Rect windowRect});
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res> implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._value, this._then);

  final AppConfig _value;
  // ignore: unused_field
  final $Res Function(AppConfig) _then;

  @override
  $Res call({
    Object? axisCount = freezed,
    Object? windowRect = freezed,
  }) {
    return _then(_value.copyWith(
      axisCount: axisCount == freezed
          ? _value.axisCount
          : axisCount // ignore: cast_nullable_to_non_nullable
              as int,
      windowRect: windowRect == freezed
          ? _value.windowRect
          : windowRect // ignore: cast_nullable_to_non_nullable
              as Rect,
    ));
  }
}

/// @nodoc
abstract class _$AppConfigCopyWith<$Res> implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(
          _AppConfig value, $Res Function(_AppConfig) then) =
      __$AppConfigCopyWithImpl<$Res>;
  @override
  $Res call({int axisCount, Rect windowRect});
}

/// @nodoc
class __$AppConfigCopyWithImpl<$Res> extends _$AppConfigCopyWithImpl<$Res>
    implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(_AppConfig _value, $Res Function(_AppConfig) _then)
      : super(_value, (v) => _then(v as _AppConfig));

  @override
  _AppConfig get _value => super._value as _AppConfig;

  @override
  $Res call({
    Object? axisCount = freezed,
    Object? windowRect = freezed,
  }) {
    return _then(_AppConfig(
      axisCount: axisCount == freezed
          ? _value.axisCount
          : axisCount // ignore: cast_nullable_to_non_nullable
              as int,
      windowRect: windowRect == freezed
          ? _value.windowRect
          : windowRect // ignore: cast_nullable_to_non_nullable
              as Rect,
    ));
  }
}

/// @nodoc

class _$_AppConfig implements _AppConfig {
  _$_AppConfig({required this.axisCount, required this.windowRect});

  @override
  final int axisCount;
  @override
  final Rect windowRect;

  @override
  String toString() {
    return 'AppConfig(axisCount: $axisCount, windowRect: $windowRect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppConfig &&
            const DeepCollectionEquality().equals(other.axisCount, axisCount) &&
            const DeepCollectionEquality()
                .equals(other.windowRect, windowRect));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(axisCount),
      const DeepCollectionEquality().hash(windowRect));

  @JsonKey(ignore: true)
  @override
  _$AppConfigCopyWith<_AppConfig> get copyWith =>
      __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);
}

abstract class _AppConfig implements AppConfig {
  factory _AppConfig({required int axisCount, required Rect windowRect}) =
      _$_AppConfig;

  @override
  int get axisCount;
  @override
  Rect get windowRect;
  @override
  @JsonKey(ignore: true)
  _$AppConfigCopyWith<_AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
