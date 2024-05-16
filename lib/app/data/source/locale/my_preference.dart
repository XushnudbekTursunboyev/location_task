import 'package:shared_preferences/shared_preferences.dart';


class MyPreference {
  static late SharedPreferences _pref;

  static Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static String getAccessToken() {
    return _pref.getString('token') ?? "";
  }

  static void saveAccessToken(String token){
    _pref.setString('token', token);
  }

  static String getRefreshToken() {
    return _pref.getString('refresh_token') ?? "";
  }

  static void saveRefreshToken(String token){
    _pref.setString('refresh_token', token);
  }

  static void clearLocaleData() async{
    await _pref.clear();
  }

}