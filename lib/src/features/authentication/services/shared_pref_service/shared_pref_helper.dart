import 'package:shared_preferences/shared_preferences.dart';
import '../../../../constants/text_string.dart';


class SharedPrefHelper {
  static Future<void> saveUserEmail(String email) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(email_key, email);
    await sp.setBool(is_signed_up_key, true);
  }

  static Future<String?> getUserEmail() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getString(email_key);
  }

  static Future<void> saveLoginInfo(bool status) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setBool(is_login, status);
  }

  static Future<bool?> isSignedUp() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool(is_signed_up_key);
  }

  static Future<bool?> isLoggedIn() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool(is_login);
  }

  static Future<void> logout() async {
    final sp = await SharedPreferences.getInstance();
    await sp.clear();
  }
  static Future<void> saveUserPassword(String password) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setString(pass_key, password);
  }

  static Future<String?> getUserPassword() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString(pass_key);
  }
  static Future<String?> getUserName()async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString(name_key);
  }
  static Future<void> setUserName(String name) async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setString(name_key, name);
  }
}
