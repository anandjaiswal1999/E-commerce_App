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
            Image.asset(
              "assets/images/Login.png",
              fit: BoxFit.cover,
            ),
            Text(
              "WELCOME",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "ENTER USERNAME",
                      labelText: "USERNAME",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "PASSWORD",
                      labelText: "PASSWORD",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("Hi Newbie");
                    },
                  ),
                ],
              ),
            )
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 16.8,horizontal: 32.0),

            // ),
          ],
        ));
  }
}
