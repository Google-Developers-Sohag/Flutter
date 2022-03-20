import 'package:shared_preferences/shared_preferences.dart';

Future<void> writeData(String text) async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('note1', text);
}

Future<String?> get readData async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  String? result = pref.getString('note1');
  return result;
}
