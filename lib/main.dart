import 'package:covid19/data/constants.dart';
import 'package:covid19/screens/homescreen.dart';
import 'package:covid19/screens/infoscrren.dart';
import 'package:covid19/screens/loadingscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData(
          scaffoldBackgroundColor: kbackgroundColor,
          fontFamily: 'Poppins',
          textTheme: TextTheme(
            bodyText1: TextStyle(color: kBodyTextColor),
          )),
      home: SplashScreen(),
    );
  }
}
