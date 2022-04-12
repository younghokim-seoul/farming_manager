import 'package:shared_preferences/shared_preferences.dart';

class LocalPreferenceManager {

  static Future<bool> putToken(String token) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("KEY_TOKEN", token);
    return true;
  }

  static Future<String?> getToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    String? value = sharedPreferences.getString('KEY_TOKEN');
    return value;
  }
}
