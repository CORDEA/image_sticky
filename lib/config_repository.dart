import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'config_repository.freezed.dart';

final configRepositoryProvider = Provider((_) => ConfigRepository());

class ConfigRepository {
  static const _axisCountKey = 'config_axis_count';
  static const _windowKey = 'config_window';

  Future<AppConfig> find() async {
    final prefs = await SharedPreferences.getInstance();
    final count = prefs.getInt(_axisCountKey);
    final window = (prefs.getString(_windowKey)?.split(',') ?? [])
        .map((e) => double.tryParse(e) ?? -1)
        .where((e) => e > 0)
        .toList(growable: false);
    return AppConfig(
      axisCount: count ?? AppConfig.empty.axisCount,
      windowRect: window.length == 4
          ? Rect.fromLTRB(window[0], window[1], window[2], window[3])
          : AppConfig.empty.windowRect,
    );
  }

  Future<void> insert(AppConfig config) async {
    final prefs = await SharedPreferences.getInstance();
    if (config.axisCount > 0) {
      prefs.setInt(_axisCountKey, config.axisCount);
    }
    final rect = config.windowRect;
    if (rect == Rect.zero) {
      return;
    }
    prefs.setString(
      _windowKey,
      [rect.left, rect.top, rect.right, rect.bottom].join(','),
    );
  }

  Future<void> delete() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_axisCountKey);
    prefs.remove(_windowKey);
  }
}

@freezed
class AppConfig with _$AppConfig {
  factory AppConfig({
    required int axisCount,
    required Rect windowRect,
  }) = _AppConfig;

  static final empty = AppConfig(axisCount: 0, windowRect: Rect.zero);
}
