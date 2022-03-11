import 'package:flutter/material.dart';
import 'package:islami/appTheme.dart';
import 'package:islami/homeWholePages/homeScreen.dart';
import 'package:islami/homeWholePages/quran/suraContent.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(buildcontext)=>HomeScreen(),
        SuraContent.routeName:(buildcontext)=>SuraContent(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
