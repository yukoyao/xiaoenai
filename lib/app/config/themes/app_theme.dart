import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get basic => ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(245, 245, 245, 1),
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
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          },
        ),
        highlightColor: Colors.transparent,
        // 去除高亮颜色
        splashColor: Colors.transparent,
        // 去除水波纹效果
        hoverColor: Colors.transparent, // 去除悬停颜色
      );

// example :
// static ThemeData get light => ThemeData();
// static ThemeData get dark => ThemeData();
}
