import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/sura_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'hadeth_details.dart';
import 'my_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale:Locale("en"),
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],

      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
