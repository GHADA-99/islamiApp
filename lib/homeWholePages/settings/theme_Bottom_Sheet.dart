import 'package:flutter/material.dart';
import 'package:islami/provider/App_Provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../appTheme.dart';
class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Container(
      child:Column(
        children: [
          InkWell(
            onTap: (){
               provider.changeAppTheme(ThemeMode.light);
            },
            child: Container(
              child: getSelectedTheme(AppLocalizations.of(context)!.light, provider.themeMode==ThemeMode.light),
            ),
          ),
          InkWell(
            onTap: (){
              provider.changeAppTheme(ThemeMode.dark);
            },
            child: Container(
              child: getSelectedTheme(AppLocalizations.of(context)!.dark, provider.themeMode==ThemeMode.dark),
            ),
          ),
        ],
      )
    );
  }

  Widget ?getSelectedTheme(String text,bool isSelected){
    if(isSelected){
      return Container(
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: Theme.of(context).textTheme.subtitle1?.copyWith(color: MyThemeData.colorGold),),
           const Icon(Icons.check,color: MyThemeData.colorGold),
          ],
        ),
      );
    }else{
      return Container(
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 22)),
          ],
        ),
      );
    }
  }
}
