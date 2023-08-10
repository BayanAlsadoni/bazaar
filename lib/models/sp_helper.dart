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

  // static bool setSeller() {
  //   sp.setBool('seller', true);
  //   return true;
  // }

  // static bool getSeller() {
  //   if (setSeller()) {
  //     sp.getBool('seller');
  //     return true;
  //   }
  //   return false;
  // }

  // static bool setCustomer() {
  //   sp.setBool('seller', true);
  //   return true;
  // }

  // static bool getCustomer() {
  //   if (setSeller()) {
  //     sp.getBool('seller');
  //     return true;
  //   }
  //   return false;
  // }

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
