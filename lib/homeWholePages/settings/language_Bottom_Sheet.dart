import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../appTheme.dart';
import '../../provider/App_Provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {


  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<AppProvider>(context);
    return Column(
      children: [
        InkWell(
           onTap: (){
              provider.changeAppLanguage('en');
           },
          child: Container(
            child: SelectedLanguage('English', provider.languageCode=='en'),
          ),
        ),
        InkWell(
          onTap: (){
            provider.changeAppLanguage('ar');
          },
          child: Container(
            child: SelectedLanguage('اللغة العربية', provider.languageCode=='ar'),
          ),
        ),
      ],
    );
  }

  Widget? SelectedLanguage(String text, bool isSelected) {
    if (isSelected) {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.all(2),
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: MyThemeData.colorGold)),
                Icon(Icons.check,color: MyThemeData.colorGold),
              ],
            ),
          ),
        ],
      );
    } else { return Container(
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 22),),
          //Icon(Icons.check),
        ],
      ),
    );
    }
  }
}
