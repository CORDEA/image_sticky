import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final imageRepositoryProvider = Provider((_) => ImageRepository());

class ImageRepository {
  static const _key = 'images';

  Future<List<String>> find() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }

  Future<void> insert(String path) async {
    final prefs = await SharedPreferences.getInstance();
    final values = prefs.getStringList(_key) ?? [];
    prefs.setStringList(_key, values + [path]);
  }

  Future<void> delete(String path) async {
    final prefs = await SharedPreferences.getInstance();
    final values = prefs.getStringList(_key) ?? [];
    prefs.setStringList(_key, values..remove(path));
  }

  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_key);
  }
}
