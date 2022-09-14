import 'package:flutter/material.dart';

import 'colors.dart';

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


PreferredSizeWidget appbar()=>AppBar(
  backgroundColor: deeporange,
  leading: Icon(Icons.fastfood_outlined,size: 30.0,),
  title: Text('FoodyApp',style: TextStyle(
      fontFamily: 'Billabong',
      fontSize: 30.0
  ),
  ),
  centerTitle: true,
);