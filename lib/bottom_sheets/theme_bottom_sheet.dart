import 'package:flutter/material.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../my_theme_data.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Light",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: provider.modeApp==ThemeMode.light? Theme.of(context).colorScheme.background:Colors.white),
                ),
                provider.modeApp==ThemeMode.light? Icon(
                  Icons.check,
                  color: MyThemeData.primaryColor,
                ):SizedBox.shrink()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!.copyWith(color: provider.modeApp==ThemeMode.dark? Theme.of(context).colorScheme.background:Colors.black),
                ),
                provider.modeApp==ThemeMode.dark? Icon(
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
