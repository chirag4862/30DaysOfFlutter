// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

// Sateless Widget me dynamic change nahi ho sakta hai
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Return me MaterialApp or Scaffold type de sakte hai
    return MaterialApp(
      // home: HomePage(),
      // themeMode se humlog app ka theme type set karte hai
      themeMode: ThemeMode.light,
      // ThemeData us theme ko or thora describe karta hai
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // Humlog google font aise use kar sakte hai sare pages k liye
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // Routes use karke humlog apne pages ko map kar sakte hai
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(),
        // yaha pe humlog route ke liye routes.dart se data le rahe hai
        MyRoutes.homeRoute: (context) => HomePage(),
        //uper me 'HomePage()' home_page.dart k class ka naam hai jo ki uss class ko call kar raha hai
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
