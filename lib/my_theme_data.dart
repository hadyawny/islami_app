import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {

  static Color primaryColor = const Color(0xffB7935F);
  static Color darkPrimaryColor = const Color(0xff141a2e);
  static Color blackColor = const Color(0xff242424);
  static Color yellowColor = const Color(0xfffacc1d);

  static ThemeData lightTheme =ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: blackColor,
          onPrimary: Colors.white,
          secondary: primaryColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: primaryColor,
          onBackground: blackColor,
          surface: primaryColor,
          onSurface: Colors.white,
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: const Color(0xffffffff),
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color:primaryColor,size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
        backgroundColor: primaryColor,

      )
  );


  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.white,
        onPrimary: Colors.white,
        secondary: Color(0xff141A2E),
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: yellowColor,
        onBackground: blackColor,
        surface: darkPrimaryColor,
        onSurface: Colors.white,
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: const Color(0xfffacc1d),
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: const Color(0xfffacc1d),
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color:Colors.white,size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        backgroundColor: darkPrimaryColor,

      )
  );

}