import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';

import '../bottom_sheets/language_bottom_sheet.dart';
import '../bottom_sheets/theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 64,
        horizontal: 18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theme",style: Theme.of(context).textTheme.bodySmall,),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },

            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(color: MyThemeData.primaryColor,width: 1)
              ),
                child: Text("light",style: Theme.of(context).textTheme.bodySmall,)),
          ),
          SizedBox(height: 18,),
          Text("Language",style: Theme.of(context).textTheme.bodySmall,),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(color: MyThemeData.primaryColor,width: 1)
                ),
                child: Text("English",style: Theme.of(context).textTheme.bodySmall,)),
          ),

        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return LanguageBottomSheet();
    },);
  }

  void showThemeBottomSheet() {

    showModalBottomSheet(context: context, builder: (context) {
      return ThemeBottomSheet();

    },);

  }
}
