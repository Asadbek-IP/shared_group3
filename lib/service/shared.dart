import 'package:shared_preferences/shared_preferences.dart';

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
}
