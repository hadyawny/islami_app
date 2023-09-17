import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {

  static Color primaryColor = const Color(0xffB7935F);
  static Color blackColor = const Color(0xff242424);

  static ThemeData lightTheme =ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
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


  static ThemeData darkTheme = ThemeData();

}