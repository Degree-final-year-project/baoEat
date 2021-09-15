import 'package:flutter/material.dart';

class MyAppTheme {

  //font size
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 22;
  static const double largeFontSize = 24;
  static const double TitleFontSize = 30;

  // light mode
  static final Color lightTextColor = Colors.red;
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.red,
    canvasColor: Color.fromRGBO(247, 247, 247, 1),
    focusColor: Color.fromRGBO(96, 95, 95, 1.0),
    errorColor: Colors.red,
    cardColor: Colors.white,
    unselectedWidgetColor: Color.fromRGBO(96, 95, 95, 1.0),
    dividerColor: Color.fromRGBO(96, 95, 95, 1.0),
   // canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme(
      bodyText2: TextStyle(fontSize: bodyFontSize),
      headline4: TextStyle(fontSize: smallFontSize),
      headline3: TextStyle(fontSize: normalFontSize),
      headline2: TextStyle(fontSize: largeFontSize),
      headline1: TextStyle(fontSize: TitleFontSize),
    ),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android:
        CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS:
        CupertinoPageTransitionsBuilder(),
      }
    )
  );

  // dark mode
  static final Color darkTextColor = Colors.blue;
  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme(
      bodyText2: TextStyle(fontSize: bodyFontSize),
      headline4: TextStyle(fontSize: smallFontSize),
      headline3: TextStyle(fontSize: normalFontSize),
      headline2: TextStyle(fontSize: largeFontSize),
    ),
  );
}