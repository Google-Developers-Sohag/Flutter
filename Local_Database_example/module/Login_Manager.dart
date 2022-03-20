import 'dart:convert';
import 'package:database_project/module/login_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginManager {

  Future<void> saveToPreference(List<User> users) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("user 1", userToJson(users));
  }

  Future<String?> get loadFromPreference async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? user = prefs.getString('user 1') ;
    return user;
  }

  List<User> userFromJson(String str) =>
      List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

  String userToJson(List<User> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}
