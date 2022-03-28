import 'package:flutter/material.dart';

Future<dynamic> alertMessage({required BuildContext context,required String title}) {
  return showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: const Text('you can add the described feature in the title by yourself'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop();
          },
          child: const Text("okay"),
        ),
      ],
    ),
  );
}
