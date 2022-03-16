import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/appTheme.dart';
import 'package:islami/homeWholePages/hadeth/hadethItem.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethTab extends StatefulWidget {

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
List<Hadeth>finalHadethform=[];

  @override
  Widget build(BuildContext context) {
    if(finalHadethform.isEmpty){
      readHadethFile();
    }
    return Column(
       children: [
         const Center(
             child: Image(
          image: AssetImage('assets/images/HadethLogo.png'),
       ),
    ),
       Container(
            margin:const EdgeInsets.only(bottom: 8.0),
            height: 2, width: double.infinity, color: MyThemeData.colorGold),
        Text(AppLocalizations.of(context)!.hadeth_number, style: Theme.of(context).textTheme.subtitle1),
        Container(
           margin:const EdgeInsets.only(top: 8.0),
            height: 2, width: double.infinity, color: MyThemeData.colorGold),
    Expanded(
          child: ListView.separated(
              itemBuilder: (buildcontext, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:HadethItem(finalHadethform[index]),
                );
              },
              separatorBuilder: (buildcontext, index) {
                return Container(height: 1, width: double.infinity, color: MyThemeData.colorGold);
              },
              itemCount:finalHadethform.length),
        ),
       ],
    );

  }

  void readHadethFile()async{
    String hadethFileContent= await rootBundle.loadString('assets/files/ahadith.txt');
    List<String> singleHadeth = hadethFileContent.trim().split('#');
    for(int i=0;i<singleHadeth.length;i++){
      String seperateHadeth=singleHadeth[i];
      seperateHadeth.trim();
      //print(seperateHadeth);
      List<String>lines= seperateHadeth.trim().split('\n');
     // print(lines);
      String title=lines[0];
      lines.removeAt(0);//content
      //print(title);
      //To link between title and content ..>create a class to take object from it
      Hadeth wholeHadeth=Hadeth(title: title, content: lines);
      finalHadethform.add(wholeHadeth);
      setState(() {

      });
    }
  }
}
class Hadeth{
  String title;
  List<String> content;
  Hadeth({required this.title,required this.content});
}

