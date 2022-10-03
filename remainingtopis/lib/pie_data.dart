import 'dart:ui';

import 'package:flutter/material.dart';

class PieData{
  static List<Data> data =[
    Data(
      name: 'Blue',percent: 40,color: Color(0XFF0293ee),
    ),
    Data(
      name: 'orange',percent: 30,color: Color(0XFFF8b250),
    ),
    Data(
      name: 'black',percent: 15,color: Colors.black,
    ),
    Data(
      name: 'Green',percent: 15,color: Color(0XFF13d38e),
    ),
  ];
}

class Data{
  final String name;
  final double percent;
  final Color color;

  Data({required this.name,required this.percent,required this.color});
}