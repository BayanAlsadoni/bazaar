import 'package:shared_preferences/shared_preferences.dart';

class SPHelper {
  static late SharedPreferences sp;
  static initSP() async {
    sp = await SharedPreferences.getInstance();
  }

  static createNewItem(String key, String value) {
    sp.setString(key, value);
  }

  static String? getItem(String key) {
    String? result = sp.getString(key);
    return result;
  }

  static bool checkFirstTime() {
    bool? result = sp.getBool('FirstLogin');
    if (result == null) {
      sp.setBool('FirstLogin', true);
      return true;
    } else {
      return false;
    }
  }
}
