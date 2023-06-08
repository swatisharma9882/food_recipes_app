import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        backgroundColor: const MaterialStatePropertyAll(Color(0xffE23E3E)),
        padding: const MaterialStatePropertyAll(EdgeInsets.all(15)),
        textStyle: const MaterialStatePropertyAll(
          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,

      toolbarHeight: 100,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
    ),
    iconTheme: const IconThemeData(
      size: 24,
      color: Color(0xffE23E3E),
    ),
  );
}
