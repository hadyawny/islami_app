import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/settings_tab.dart';

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
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
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
                  label: "Quran",
                  backgroundColor: MyThemeData.primaryColor,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "Sebha",
                  backgroundColor: MyThemeData.primaryColor,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/radio.png"),
                  ),
                  label: "Radio",
                  backgroundColor: MyThemeData.primaryColor,
                ),
                BottomNavigationBarItem(
                  icon:
                      const ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "Ahadeth",
                  backgroundColor: MyThemeData.primaryColor,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: MyThemeData.primaryColor,
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
    const AhadethTab(),
    const SettingsTab()
  ];
}
