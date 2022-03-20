import 'dart:convert';

import 'package:database_project/module/Login_Manager.dart';
import 'package:database_project/module/login_data.dart';
import 'package:flutter/material.dart';


class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    LoginManager().loadFromPreference.then((value) {
      setState(() {
        Map<String, dynamic> map = jsonDecode(value!)[0];
        User myUser = User.fromJson(map);
        print(map);
        userName.text = myUser.name;
        password.text = myUser.pass;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: userName,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => LoginManager().saveToPreference([
          User(name: userName.text, pass: password.text),
        ]),
        child: const Icon(Icons.save_alt_outlined),
      ),
    );
  }
}
