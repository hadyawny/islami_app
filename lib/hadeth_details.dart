import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_model.dart';

import 'my_theme_data.dart';

class HadethDetails extends StatelessWidget {

  static const String routeName ="hadethDetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: MyThemeData.primaryColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: MyThemeData.primaryColor,
                  thickness: 1,
                  indent: 40,
                  endIndent: 40,
                ),
                itemBuilder: (context, index) {
                  return Center(
                      child: Text(
                        args.content[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ));
                },
                itemCount: args.content.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
