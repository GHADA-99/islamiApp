import 'package:flutter/material.dart';
import 'package:islami/provider/App_Provider.dart';
import 'package:provider/provider.dart';

import '../../appTheme.dart';

class HadethContent extends StatelessWidget {
  static const String routeName = 'Hadeth Content';

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    var args=(ModalRoute.of(context)?.settings.arguments) as HadethArg;
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(args.title,style: Theme.of(context).textTheme.headline2),
                Container(
                    margin:const EdgeInsets.all(8.0),
                    height: 2, width: double.infinity, color: MyThemeData.colorGold),
                Container(
                  padding: EdgeInsets.all(2),
                  child: Text(args.content,textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle2),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
class HadethArg{
  String title;
  String content;
  HadethArg({required this.title,required this.content});
}
