import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/appTheme.dart';

class SuraContent extends StatefulWidget {
  static const String routeName = 'Sura Content';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> Splitedverses = [];

  @override
  Widget build(BuildContext context) {
    var args = (ModalRoute.of(context)?.settings.arguments) as SuraContentArg;
    if(Splitedverses.isEmpty){loadFile('${args.index+1}');}
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg3.png',
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

            body: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.07),
                      Center(
                          child: Text(args.suraName,
                              style: Theme.of(context).textTheme.subtitle2),
                      ),
                      Container(
                          margin: EdgeInsets.all(20),
                          width: double.infinity,height: 2,color: MyThemeData.colorGold),
                    ],
                  ),
                ),
               Expanded(
                 flex: 3,
                   child:  Splitedverses.length == 0
                   ? CircularProgressIndicator()
                   : ListView.separated(
                       separatorBuilder: (buildcontext,index){
                         return Container(margin: EdgeInsets.all(8),width: double.infinity,height: 1,color: MyThemeData.colorGold);
                       },
                       itemBuilder: (_, index) {
                 return Text("${Splitedverses[index]} {${index + 1}}",textDirection: TextDirection.rtl,textAlign: TextAlign.center,style: TextStyle(fontSize: 20));
               },itemCount: Splitedverses.length)),


              ],
            ),
          ),
      ],
    );
  }

  void loadFile(fileName) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$fileName.txt');
    //3lchan ana 3ndy kol ayah fi new Line w deh sa3tha el strings ely h3mlha return'verses' deh ely h2dr 23rdha fi my widget
    List<String> verses = fileContent.split('\n');
    Splitedverses=verses;
    print(verses);
    setState(() {

    });

  }
}

class SuraContentArg {
  String suraName;
  int index;
  SuraContentArg({required this.suraName, required this.index});
}
