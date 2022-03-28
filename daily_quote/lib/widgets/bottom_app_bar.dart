import 'package:daily_quotes/constants.dart';
import 'package:flutter/material.dart';

import 'alert_message.dart';

BottomAppBar demoBottomAppBar(BuildContext context) {
  return BottomAppBar(
    color: Colors.black,
    notchMargin: 12.0,
    // to scale the FAB
    child: SizedBox(
      height: 78,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                print('HI');
                alertMessage(
                  context: context,
                  title: 'Add new Page with saved Favourite quotes');
              },),
          const SizedBox(height: 8),
          IconButton(
              tooltip: 'Favorite',
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () => alertMessage(
                  context: context, title: 'Make the Quote Favorite')),
        ],
      ),
    ),
    shape: kRoundedBottomBar
  );
}
