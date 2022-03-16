 import 'package:flutter/material.dart';
import 'package:islami/homeWholePages/hadeth/hadethTap.dart';

import 'hadethContent.dart';
class HadethItem extends StatelessWidget {
  Hadeth item;
  HadethItem(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context,HadethContent.routeName,
              arguments: HadethArg(title: item.title, content: item.content.toString())
          );
        },
        child: Text(item.title,textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle2),
      ),

    );
  }
}

