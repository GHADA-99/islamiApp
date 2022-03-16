import 'package:flutter/material.dart';
import 'package:islami/appTheme.dart';
class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(image:AssetImage( 'assets/images/oldRadioImage.png')),
        Column(children: [
          Text('اذاعة القران الكريم',
            style:Theme.of(context).textTheme.subtitle1,
          ),
          //TODO:FIXME
          Container(
            height: 50,
            width: 200,
            color: MyThemeData.colorGold,
          ),
        ],),

      ],
    );
  }
}