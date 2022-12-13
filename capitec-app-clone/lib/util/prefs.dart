import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static SharedPreferences? _preferences;

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  //Setter Methods
  static Future setCheckBox(String key, bool value) async =>
      await _preferences?.setBool(
        key,
        value,
      );

  static Future setBool(String key, bool value) async =>
      await _preferences?.setBool(
        key,
        value,
      );

  static Future setString(String key, String value) async =>
      await _preferences?.setString(
        key,
        value,
      );

  static Future setInt(String key, int value) async =>
      await _preferences?.setInt(
        key,
        value,
      );

  static Future setDouble(String key, double value) async =>
      await _preferences?.setDouble(
        key,
        value,
      );

// Getter Methods
  static bool? getBool(String key) => _preferences?.getBool(key) ?? false;

  static bool? getCheckBox(String key) => _preferences?.getBool(key);

  static String? getString(String key) => _preferences?.getString(key);

  static int? getInt(String key) => _preferences?.getInt(key) ?? 0;
  static int? getIntApply4Me(String key) => _preferences?.getInt(key) ?? -1;

  static double? getDouble(String key) => _preferences?.getDouble(key) ?? 0.0;

  //remove/clear
  static Future removeAllSavedPrefs() async => await _preferences?.clear();
  static Future removeKey(String key) async => await _preferences?.remove(key);
}
