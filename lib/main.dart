import 'package:flutter/material.dart';
import 'package:quote_app/homePage.dart';
import 'package:quote_app/inputPage.dart';
import 'package:quote_app/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const inputPage(),
      routes: {
        "loginpage": (context) => const loginPage(),
        "homepage": (context) => const homePage(),
      },
    );
  }
}
