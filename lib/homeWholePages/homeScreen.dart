import 'package:flutter/material.dart';
import 'package:islami/appTheme.dart';
import 'package:islami/homeWholePages/hadeth/hadethTap.dart';
import 'package:islami/homeWholePages/quran/quranTab.dart';
import 'package:islami/homeWholePages/radio/radioTap.dart';
import 'package:islami/homeWholePages/sebha/sebhaTap.dart';
import 'package:islami/homeWholePages/settings/settingsTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/App_Provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 3;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.themeMode==ThemeMode.light?
          'assets/images/bg3.png':'assets/images/bg.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text('islami', style: Theme.of(context).textTheme.headline1),
          ),
          body: getPage(currentPageIndex),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
    //           bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
    //              selectedItemColor: MyThemeData.selectedColor,
    //              unselectedItemColor: MyThemeData.unSelectedColor,
    //             // backgroundColor: colorGold, using canvas color
    // ),
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                currentPageIndex = index;
                setState(() {});
              },
              currentIndex: currentPageIndex,
              items: [
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.radio, //appear lable of item at selection
                  icon:ImageIcon(AssetImage('assets/images/radio.png')),
                ),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.sebha,
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                ),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.hadeth,
                  icon: ImageIcon(AssetImage('assets/images/quranic3.png')),
                ),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.quran,
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                ),
                BottomNavigationBarItem(
                   label: AppLocalizations.of(context)!.settings,
                    icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getPage(int index) {
    if (currentPageIndex == 0) {
      return RadioTab();
    } else if (currentPageIndex == 1) {
      return SebhaTab();
    } else if (currentPageIndex == 2) {
      return HadethTab();
    } else if(currentPageIndex == 3) {
      return QuranTab();
    }else {
      return SettingTab();
    }
  }
}
