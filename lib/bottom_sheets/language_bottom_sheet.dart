import 'package:flutter/material.dart';

import '../my_theme_data.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem("English"),
          getUnselectedItem("Arabic"),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: MyThemeData.primaryColor
        ),),
        Icon(Icons.check,color: MyThemeData.primaryColor,)
      ],
    );


  }

  Widget getUnselectedItem(String text){
    return Text(text,style: Theme.of(context).textTheme.bodySmall,);


  }
}
