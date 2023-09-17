import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/my_theme_data.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/sebha_body.png"),
          SizedBox(
            height: 20,
          ),
          Text(
            "tasbeh count",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyThemeData.primaryColor,
              ),
              child: Text(
                "1",
                style: TextStyle(color: MyThemeData.blackColor),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyThemeData.primaryColor),
            child: Text("سبحان الله",
                style: Theme.of(context).textTheme.bodyMedium),
          )
        ],
      ),
    );
  }
}
