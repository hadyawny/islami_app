import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter=0;
  int tasbehCounter=0;
  List<String> tasbeh =["سبحان الله","الحمدلله","استغفر الله","الله اكبر","لا اله الا الله"];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          InkWell(
              onTap: (){
                counter++;

                if(counter==34){
                  counter=1;
                  tasbehCounter++;
                }
                if(tasbehCounter==5){
                  tasbehCounter=0;
                }
                setState(() {

                });
              },
              child: Image.asset("assets/images/sebha_body.png")),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.tasbehCount,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyThemeData.primaryColor,
              ),
              child: Text(
                "$counter",
                style: TextStyle(color: MyThemeData.blackColor),
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyThemeData.primaryColor),
            child: Text(tasbeh[tasbehCounter],
                style: Theme.of(context).textTheme.bodyMedium),
          )
        ],
      ),
    );
  }
}
