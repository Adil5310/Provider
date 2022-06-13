import 'package:flutter/material.dart';

class Homepageprovider extends ChangeNotifier{
  bool? eligible;
  String? eliginilitymessage = "";
  void checkEliginility(int age){
    if(age >= 18)
      {
          eligible= true;
          eliginilitymessage = "You are eligible";
          notifyListeners();
      }
    else{
      eligible= false;
      eliginilitymessage = "You are not eligible";
      notifyListeners();
    }
  }
}