// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/Login.png",
            fit: BoxFit.cover,
            ),
            Text("WELCOME"),
          ],
        )
        );
  }
}
