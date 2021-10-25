import 'package:shared_preferences/shared_preferences.dart';

import 'storage_constants.dart';

/// StorageProvider
class StorageProvider {
  /// removeKey
  static Future<bool> removeKey(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  /// saveUID
  static Future<bool> saveUID(String uid) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(StorageConstants.uid, uid);
  }

  /// getUID
  static Future<String?> getUID() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(StorageConstants.uid);
  }

  /// savePassword
  static Future<bool> savePassword(String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(StorageConstants.password, password);
  }

  /// getPassword
  static Future<String?> getPassword() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(StorageConstants.password);
  }

  /// saveUserName
  static Future<bool> saveUserName(String userName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(StorageConstants.userName, userName);
  }

  /// getUserName
  static Future<String?> getUserName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(StorageConstants.userName);
  }
}
