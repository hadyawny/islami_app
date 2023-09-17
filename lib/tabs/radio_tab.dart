import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_body.png"),
          const SizedBox(
            height: 50,
          ),
          Text(
            AppLocalizations.of(context)!.quranRadio,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset("assets/images/play_icons_radio.png"),
        ],
      ),
    );
  }
}
