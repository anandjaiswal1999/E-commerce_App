import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widget/themes.dart';
import 'Pages/homepage.dart';
import 'Pages/login_page.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context ),
      darkTheme:MyTheme.darkTheme(context) ,
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => Homepage(),
        MyRoutes.LoginRoute: (context) => LoginPage()
      },
    );
  }
}
