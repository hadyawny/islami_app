import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {

  String locale = 'en';


  changeLanguage(String langCode){

    locale = langCode;
    notifyListeners();

  }


}