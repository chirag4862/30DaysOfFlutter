// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Chirag";
  /*
    double pi = 3.14;
    bool isMale = true;
    num temp = 30.5; // num can have both int and double values
    var day = "Monday"; // var can have any type of value
    const g = 9.8; // const value can not be overwritten
    */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("$days days of Flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
