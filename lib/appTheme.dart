import 'package:flutter/material.dart';
class MyThemeData {
  static const colorGold=Color.fromRGBO(183, 147, 95, 1.0);
  static const colorBlack=Color.fromRGBO(36, 36, 36, 1.0);
  static const selectedColor=Colors.black;
  static const unSelectedColor=Colors.white;
  static var lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    //canvasColor: colorGold,
    appBarTheme:const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    ),
    textTheme:const TextTheme(
      subtitle1: TextStyle(
        fontSize: 25,
        color: colorBlack,
      ),
      subtitle2:  TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: colorBlack,
      ),
      headline2: TextStyle(
        fontSize: 22,
        color: colorBlack,
        fontWeight: FontWeight.bold,
      ),
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: colorBlack,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: colorGold,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    ),
    //Can't work from here!! so w use it in homepage
    // bottomNavigationBarTheme:const BottomNavigationBarThemeData(
    //   selectedItemColor: selectedColor,
    //   unselectedItemColor: unSelectedColor,
    // ),
  );
  static var darkTheme=ThemeData(
    appBarTheme:const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    ),
  );
}
