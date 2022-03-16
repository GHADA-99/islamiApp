import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/appTheme.dart';
import 'package:islami/homeWholePages/quran/SuraItem.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class QuranTab extends StatelessWidget {
  final List<String> suraNames = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset('assets/images/main_logo.png'),
        ),
        Container(margin: EdgeInsets.only(top: 15,bottom: 8),width: double.infinity,height: 2,color: MyThemeData.colorGold),
        Text(AppLocalizations.of(context)!.sura_name,style: Theme.of(context).textTheme.subtitle2),
        Container(margin: EdgeInsets.only(top: 15,bottom: 8),width: double.infinity,height: 2,color: MyThemeData.colorGold),
       Expanded(
         child: ListView.separated(
            separatorBuilder: (buildcontext,index){
              return Container(margin: EdgeInsets.all(8),width: double.infinity,height: 1,color: MyThemeData.colorGold);
            },
             itemBuilder: (buildcontext,index){
           return SuraItem(suraNames[index],index);
         },itemCount: suraNames.length),
       ),
      ],
    );
  }
}
