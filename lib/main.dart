// @dart=2.9

import 'package:flutter/material.dart';
import 'package:hacktv/src/styles/constants.dart';
import 'package:hacktv/src/screens/states_screen.dart';
import 'package:hacktv/src/screens/home_screen.dart';
import 'package:hacktv/src/screens/endStart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HACK TV',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: HomeScreen(),
      //home: StatesScreen(),
      home: EndStartScreen(),
    );
  }
}

