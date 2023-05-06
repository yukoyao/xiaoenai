import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get basic => ThemeData(
        primaryColor: const Color.fromRGBO(173, 173, 173, 1),
        primarySwatch: Colors.grey,
        canvasColor: Colors.white,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Color.fromRGBO(246, 246, 246, 1),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(187, 193, 202, 1),
        ),
      );

// example :
// static ThemeData get light => ThemeData();
// static ThemeData get dark => ThemeData();
}
