import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(color: Colors.black),
           // ignore: deprecated_member_use
           textTheme: Theme.of(context).textTheme
          
        )
      );
       static ThemeData darkTheme(BuildContext context) => ThemeData(
             brightness: Brightness.dark,

      );
}