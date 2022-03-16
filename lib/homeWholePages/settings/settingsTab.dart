import 'package:flutter/material.dart';
import 'package:islami/appTheme.dart';
import 'package:islami/homeWholePages/settings/language_Bottom_Sheet.dart';
import 'package:islami/homeWholePages/settings/theme_Bottom_Sheet.dart';
import 'package:islami/provider/App_Provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTab extends StatefulWidget {

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<AppProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language, style: Theme
              .of(context)
              .textTheme
              .subtitle1),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: MyThemeData.colorGold),
              ),
              child: Text(provider.languageCode=='en'?'English':'العربية', style: Theme
                  .of(context)
                  .textTheme
                  .subtitle1),
            ),
          ),
          SizedBox(height: 10),
          Text(AppLocalizations.of(context)!.theme, style: Theme
              .of(context)
              .textTheme
              .subtitle1),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: MyThemeData.colorGold),
              ),
              child: Text(provider.themeMode==ThemeMode.light?"Light":"Dark", style: Theme
                  .of(context)
                  .textTheme
                  .subtitle1),
            ),
          ),


        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder: (buildcontext) {
      return Container(
        child: LanguageBottomSheet(),
      );
    });
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context, builder: (buildcontext) {
      return Container(
        child: ThemeBottomSheet(),
      );
    });
  }
}
