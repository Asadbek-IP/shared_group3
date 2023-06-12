import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';

class SharedPref {
  static Future setName(String name) async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    shared.setString("name", name);
  }

  static Future<String> getName() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    return shared.getString("name") ?? "Malumot topilmadi";
  }

  static Future setAge(int age) async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    shared.setInt("age", age);
  }

  static Future<int> getAge() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    return shared.getInt("age") ?? 0;
  }


  static Future setUser(User user)async{

    SharedPreferences shared = await SharedPreferences.getInstance();
    Map result = user.mapGa();

    String json = jsonEncode(result);
    shared.setString("user", json);
  }

  static Future<User> getUser() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    String json= shared.getString("user") ?? "Malumot yoq";
    Map map = jsonDecode(json);
    User user  = User.mapDan(map);
    return user;
  }
}
