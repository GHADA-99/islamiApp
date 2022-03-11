import 'package:flutter/material.dart';
import 'package:islami/homeWholePages/quran/suraContent.dart';

class SuraItem extends StatelessWidget {
  final String suraName;
  final int index;
  SuraItem(this.suraName,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraContent.routeName,arguments: SuraContentArg(suraName: suraName, index: index));
      },
      child: Container(
        child: Text(suraName,textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle1),
      ),
    );
  }
}

