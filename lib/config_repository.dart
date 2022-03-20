import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final configRepositoryProvider = Provider((_) => ConfigRepository());

class ConfigRepository {
  static const _axisCountKey = 'config_axis_count';
  static const _windowKey = 'config_window';

  Future<AppConfig?> find() async {
    final prefs = await SharedPreferences.getInstance();
    final count = prefs.getInt(_axisCountKey);
    final window = (prefs.getString(_windowKey)?.split(',') ?? [])
        .map((e) => double.tryParse(e) ?? -1)
        .where((e) => e > 0)
        .toList(growable: false);
    if (count == null || window.length != 4) {
      return null;
    }
    return AppConfig(
      axisCount: count,
      windowRect: Rect.fromLTRB(window[0], window[1], window[2], window[3]),
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

class AppConfig {
  AppConfig({
    required this.axisCount,
    required this.windowRect,
  });

  final int axisCount;
  final Rect windowRect;
}
