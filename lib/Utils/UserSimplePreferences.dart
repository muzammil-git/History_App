import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences{

  static SharedPreferences _preferences;

  static const _userEmail = "username";

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setEmail(String email) async =>
      await _preferences.setString(_userEmail, email);

  static String getUserEmail() => _preferences.getString(_userEmail);

}