import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_group3/model/user.dart';
import 'package:shared_group3/service/shared.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController famController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: "Ism"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: famController,
                decoration: InputDecoration(hintText: "Familiya"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(hintText: "Yosh"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    // String ism = nameController.text;
                    //
                    // SharedPref.setName(ism);
                    //
                    // int yosh = int.parse(ageController.text);
                    //
                    // SharedPref.setAge(yosh);

                    User user = User(name: nameController.text, fam: famController.text, age: int.parse(ageController.text));
                      SharedPref.setUser(user);

                  },
                  child: Text("DB ga saqlash")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    // print(await SharedPref.getName());
                    // print(await SharedPref.getAge());

                  User user = await SharedPref.getUser();
                    print(user.name);

                  },
                  child: Text("DB dan olish")),
            ],
          ),
        ),
      ),
    );
  }
}
