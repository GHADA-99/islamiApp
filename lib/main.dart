import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/appTheme.dart';
import 'package:islami/homeWholePages/hadeth/hadethContent.dart';
import 'package:islami/homeWholePages/homeScreen.dart';
import 'package:islami/homeWholePages/quran/suraContent.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/App_Provider.dart';
import 'package:provider/provider.dart';





void main() {
  runApp( ChangeNotifierProvider(
    create: (buildcontext){
      return AppProvider();
    },
      child: MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(provider.languageCode),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(buildcontext)=>HomeScreen(),
        SuraContent.routeName:(buildcontext)=>SuraContent(),
        HadethContent.routeName:(buildcontext)=>HadethContent(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }
}
