import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/appTheme.dart';


class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTab> {
  int counter = 0;
  List<String>doaa = ['الله اكبر','لا اله الا الله', 'سبحان الله'];
  int doaaIndexInDoaaList=0;
  double angle=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: Stack(
            alignment:AlignmentDirectional.topCenter,
            children: [
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.13),
                  child:const Image(
                    image: AssetImage('assets/images/sebhaUpperbody.png'),
                  ),
                ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.09),
                //Imp wrap image not el container
                child:Transform.rotate(
                  angle: angle,
                  child: const Image(
                    image: AssetImage('assets/images/sebhaLowerBody.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
         SizedBox(height:MediaQuery.of(context).size.height*0.03),
        Column(
          children: [
            Text('عدد التسبيحات', style: Theme
                .of(context)
                .textTheme
                .subtitle1),
            ElevatedButton(
              onPressed: () {
                counter++;
                angle+=0.01;
                setState(() {
                    doaaChange();
                });
              },
              child:
              Text('$counter', style: Theme
                  .of(context)
                  .textTheme
                  .subtitle2),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: MyThemeData.colorGold,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text( doaa[doaaIndexInDoaaList], style: Theme
                  .of(context)
                  .textTheme
                  .subtitle1),
            ),
          ],
        ),

      ],
    );
  }

  String ?doaaChange(){
      if(counter%33==0){
        if(doaaIndexInDoaaList==doaa.length-1){
          doaaIndexInDoaaList=0;
        }
        doaaIndexInDoaaList++;
      }
  }
}
//methods
//String doaaChange(){// if(counter%33==0 ){
////int index=0;//method 2 of sebha counting
//String text='الله اكبر';//method1
  //     index =doaa.indexOf(text);
  // if(index== doaa.length){
  //   index=-1;
  // }
  //   text = doaa[index+1];
  // }
  //method 2
  // if(counter%33==0){
  //   if(doaaIndexInDoaaList==doaa.length){
  //     doaaIndexInDoaaList=-1;
  //   }
  //   text=doaa[doaaIndexInDoaaList+1];
  // }}