import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    double pi = 3.14;
    bool isMale = true;
    num temp = 30.5; // num can have both int and double values
    var day = "Monday"; // var can have any type of value
    const g = 9.8; // const value can not be overwritten
    */
    return MaterialApp(
      home: HomePage(),
    );
  }
}
