
// add dependecy in pubspec.yaml

// dependencies:
//   url_launcher: ^6.1.3

// Call the launch method from url_launcher package:
//launch("tel://214324234");

//Here's the complete code:

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Scaffold(
        appBar: new AppBar(
          title: new Text("View"),
        ),
        body: new Center(
          child: new FlatButton(
              onPressed: () => launch("tel://21213123123"),
              child: new Text("Call me")),
        ),
      );
}

void main() {
  runApp(
    new MyApp(),
  );
}
