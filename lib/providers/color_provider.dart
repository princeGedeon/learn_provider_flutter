import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier{

  MaterialColor color=Colors.blue;

  changeColor(MaterialColor newColor){
    color=newColor;
    notifyListeners();
  }
}