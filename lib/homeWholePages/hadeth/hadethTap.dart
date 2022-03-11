import 'package:flutter/material.dart';
import 'package:islami/appTheme.dart';

class HadethTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         const Expanded(
           flex: 1,
           child: Center(
            child: Image(
              image: AssetImage('assets/images/HadethLogo.png'),
            ),
          ),),
          Column(
            children: [
          const Divider(thickness: 2, color: MyThemeData.colorGold),
          Text('الاحاديث',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1),
          const Divider(thickness: 2, color: MyThemeData.colorGold),
            ],
          ),
          Expanded(
            flex:2,
            child: ListView.builder(
              itemBuilder: (BuildContext, index) {
                return Text('حديث رقم ${index+1}',textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2);
              },
              itemCount: 50,
            ),
          )
        ],
      ),
    );
  }
}
