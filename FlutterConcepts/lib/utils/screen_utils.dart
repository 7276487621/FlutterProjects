import 'package:flutter/material.dart';

class ScreenUtils{
  static double height = 0;
  static double width = 0;

  static setValue(context){
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    print(height);
    print(width);
  }
}