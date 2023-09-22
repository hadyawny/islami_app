import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem("light"),
          getUnselectedItem("Dark"),
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
