import 'package:flutter/material.dart';

class MyThemeData {
  static const colorGold = Color.fromRGBO(183, 147, 95, 1.0);
  static const colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static const colorWhite = Colors.white;
  static const colorBlue=Color(0xFF141A2E);
  static const selectedColor = Colors.black;
  static const darkSelectedColor = Color(0xFFFACC1D);
  static const unSelectedColor = Colors.white;
  static const darkUnSelectedColor = Colors.white;
  //...........LightTheme......................
  static var lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: colorGold,
    //canvasColor: colorGold,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      subtitle1: TextStyle(
        fontSize: 25,
        color: colorBlack,
      ),
      subtitle2: TextStyle(
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
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      selectedItemColor: selectedColor,
      unselectedItemColor: unSelectedColor,
    ),
  );
  //............darkTheme........................
  static var darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor:colorBlue,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      subtitle1: TextStyle(
        fontSize: 25,
        color: colorWhite,
      ),
      subtitle2: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: colorWhite,
      ),
      headline2: TextStyle(
        fontSize: 22,
        color: colorWhite,
        fontWeight: FontWeight.bold,
      ),
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: colorWhite,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: colorGold,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: MyThemeData.darkSelectedColor,
      unselectedItemColor: MyThemeData.darkUnSelectedColor,
      // backgroundColor: colorGold, using canvas color
    ),
  );
}
