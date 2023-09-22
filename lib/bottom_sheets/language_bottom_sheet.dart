import 'package:flutter/material.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../my_theme_data.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: provider.locale=='en'? MyThemeData.primaryColor:MyThemeData.blackColor),
                ),
                provider.locale=='en'? Icon(
                  Icons.check,
                  color: MyThemeData.primaryColor,
                ):SizedBox.shrink()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall?.copyWith(
                    color: provider.locale=='ar'? MyThemeData.primaryColor:MyThemeData.blackColor,
                  ),
                ),
                provider.locale=='ar'? Icon(
                  Icons.check,
                  color: MyThemeData.primaryColor,
                ):SizedBox.shrink()

              ],
            ),
          ),
        ],
      ),
    );
  }


}
