import 'package:flutter/material.dart';

enum CountType{
  increment,
  reset,
  decrement;

  Icon getIcon(){
    switch(this){
      case CountType.decrement: return Icon(Icons.exposure_minus_1);
      case CountType.increment: return Icon(Icons.exposure_plus_1);
      case CountType.reset: return Icon(Icons.exposure_zero);
    }
  }

}