import 'package:flutter/material.dart';

import 'constants.dart';
import 'helpers/trans_status.dart';
import 'screens/home.dart';

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
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHome(),
    );
  }
}