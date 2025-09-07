import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static late SharedPreferences _sharedPreferences;

  /// Initialize the SharedPreferences instance.
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  /// Retrieve data by key. Returns `null` if the key does not exist.
  static dynamic getData({required String key}) {
    return _sharedPreferences.get(key);
  }

  /// Save data to SharedPreferences.
  ///
  /// Supports `String`, `int`, `bool`, and `double` types.
  /// Returns `true` if the operation is successful.
  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await _sharedPreferences.setString(key, value);
    } else if (value is int) {
      return await _sharedPreferences.setInt(key, value);
    } else if (value is bool) {
      return await _sharedPreferences.setBool(key, value);
    } else if (value is double) {
      return await _sharedPreferences.setDouble(key, value);
    } else {
      throw ArgumentError(
          "Unsupported value type. Only String, int, bool, and double are allowed.");
    }
  }

  /// Remove data by key.
  ///
  /// Returns `true` if the key was successfully removed.
  static Future<bool> removeData({required String key}) async {
    return await _sharedPreferences.remove(key);
  }

  /// Check if a key exists in SharedPreferences.
  static bool containsKey(String key) {
    return _sharedPreferences.containsKey(key);
  }

  /// Clear all data from SharedPreferences.
  ///
  /// Returns `true` if the operation is successful.
  static Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }
}