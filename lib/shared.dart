import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static Future<bool> savedata(String key, value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(key, value);
  }

  static Future<String> getdata(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(key) ?? "";
  }

  static Future<bool> removedata(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove(key);
  }

  static Future<bool> savelist(String key, List<String> value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setStringList(key, value);
  }
    static Future<List<String>> getlist(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getStringList(key)??[];
  }
}
//  value  =