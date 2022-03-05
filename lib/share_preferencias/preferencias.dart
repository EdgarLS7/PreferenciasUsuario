

import 'package:shared_preferences/shared_preferences.dart';

class Preferencias {

  static late SharedPreferences _prefs;

  static String name     = '';
  static bool isDarkmode = false;
  static int gender      = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

}