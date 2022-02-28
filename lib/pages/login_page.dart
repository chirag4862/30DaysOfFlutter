// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/routes.dart';

// Stateful Widget page ko dynamic banata hai
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        // SingleChildScrollView se ek page scrollable banta hai
        child: SingleChildScrollView(
          // Column k use se elements ko stack kar sakte hai
          //iske andar child k jagha children hote hai
          child: Column(
            children: [
              // Image.asset() se images add kar sakte hai
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              // SizedBox() gap dene kaam ata hai
              SizedBox(
                height: 20,
              ),
              Text("Welcome $name",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    // TextFormField se inputs liya ja sakta hai
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      // onChanged koi bhi change hone se ek callback deta hai
                      onChanged: (value) {
                        name = value;
                        // setState Build method ko dubara call karta hai
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      // obscureText input ko hide karta hai
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // InkWell se container pe actions perform kar sakte hai
                    // Ye GestureDetector se accha hai kyuki usme animation nahi hota
                    // InkWell OnTap and hover jaise features provide karta hai
                    InkWell(
                      // async because we are using await
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        // await use kare rahe hai kaam ko delay karne k liye
                        await Future.delayed(Duration(seconds: 1));
                        // HomeRoue ko call kiya routes.dart k through
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      // Conatiner just ek css container jaise hi hota hai
                      // AnimatedContainer ek container hai jo animate ho sakta hai
                      // isko duration dena padta hai
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text("Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                        // Conatiner me BoxDecoration se usko custom design kar sakte hai
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          /*
                          // Isse humlog container ka shape change kar sakte hai
                          shape: changeButton
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                          */
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                        ),
                      ),
                    ),

                    /*
                    // ElevatedButton() se button banta hai
                    // ye ek onPressed and Child leta hi hai
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    ),*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
