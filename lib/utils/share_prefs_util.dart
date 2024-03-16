import 'package:shared_preferences/shared_preferences.dart';

import 'dependency_injector.dart';

const String kKeyCountryCode = "kCountryCode";
const String kKeyLanguageCode = "kLanguageCode";

final class SharedPreferenceUtil {

  SharedPreferenceUtil() {
    _prefs = injector<SharedPreferences>();
  }

  late final SharedPreferences _prefs;

  String? getString(String key) => _prefs.getString(key);

  bool? getBool(String key) => _prefs.getBool(key);

  int? getInt(String key) => _prefs.getInt(key);

  double? getDouble(String key) => _prefs.getDouble(key);

  Future<bool?> setString(String key, String value) async => await _prefs.setString(key, value);

  Future<bool?> setBool(String key, bool value) async => await _prefs.setBool(key, value);

  Future<bool?> setInt(String key, int value) async => await _prefs.setInt(key, value);

  Future<bool?> setDouble(String key, double value) async => await _prefs.setDouble(key, value);

  Future<bool> remove(String key) => _prefs.remove(key);
}