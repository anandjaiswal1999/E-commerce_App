// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/Login.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "USERNAME",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "PASSWORD",
                        labelText: "PASSWORD",
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    //   },

                    // ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 2));
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          // shape: changeButton? BoxShape.circle:BoxShape.rectangle
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 16.8,horizontal: 32.0),

              // ),
            ],
          ),
        ));
  }
}
