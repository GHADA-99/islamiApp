import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  String languageCode="en";
  ThemeMode themeMode=ThemeMode.light;
  void changeAppLanguage(String AppLanguage){
    languageCode=AppLanguage;
    notifyListeners();
  }
  void changeAppTheme(ThemeMode themeMode){
    this.themeMode=themeMode;
    notifyListeners();
  }

}
