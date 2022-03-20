import 'package:database_project/helpers/trans_status.dart';
import 'package:database_project/screens/text_editor.dart';
import 'package:flutter/material.dart';

void main() {
  transStatus();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC Sohag',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextEditor(),
    );
  }
}
