

import 'package:flutter/material.dart';


class CountProvider with ChangeNotifier{

  int count=0;

  incrementCounter(){
    count++;
    notifyListeners();
  }

  decrementCounter(){
    count--;
    notifyListeners();
  }

  resetCounter(){
    count=0;
    notifyListeners();
  }

}