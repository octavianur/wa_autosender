import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static Future<SharedPreferences> getPref() async => await SharedPreferences.getInstance();

  static Future setString(String key, String value) async => 
    (await getPref()).setString(key, value);
  
  

  static Future<bool> getBool(String key) async => (await getPref()).getBool(key) ?? false;
}