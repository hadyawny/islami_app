import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {

    var pro= Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          pro.modeApp== ThemeMode.light?"assets/images/background.png":"assets/images/background_dark.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                  label: AppLocalizations.of(context)!.quran,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: AppLocalizations.of(context)!.sebha,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/radio.png"),
                  ),
                  label: AppLocalizations.of(context)!.radio,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                BottomNavigationBarItem(
                  icon:
                      const ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: AppLocalizations.of(context)!.ahadeth,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
              ]),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    const SebhaTab(),
    const RadioTab(),
     AhadethTab(),
    const SettingsTab()
  ];
}
