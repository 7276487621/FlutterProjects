import 'dart:core';
import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  int? firstnum;
  int? secondnum;
  String texttoDisplay = '';
  String? res;
  String? operatorToPerform;

  void btnClicked(String btnValue) {
    if (btnValue == 'C') {
      texttoDisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
    } else if (btnValue == '*' ||
        btnValue == '+' ||
        btnValue == '-' ||
        btnValue == '/') {
      firstnum = int.parse(texttoDisplay);
      res = '';
      operatorToPerform = btnValue;
    } else if (btnValue == '=') {
      secondnum=int.parse(texttoDisplay);
      if(operatorToPerform == '+'){
        res=(firstnum! + secondnum!).toString();
      }
      if(operatorToPerform == '-'){
        res=(firstnum! - secondnum!).toString();
      }
      if(operatorToPerform == '*'){
        res=(firstnum! * secondnum!).toString();
      }
      if(operatorToPerform == '/'){
        res=(firstnum! / secondnum!).toString();
      }
    }
    else{
      res=int.parse(texttoDisplay + btnValue).toString();
    }
    texttoDisplay=res!;
    setState(() {
      texttoDisplay=res!;

    });

  }

  Widget customButtom(String btnValue) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: OutlinedButton(
            onPressed: () => btnClicked(btnValue),
            child: Text(
              '$btnValue',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Calculator'),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '$texttoDisplay',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )),
              Row(
                children: [
                  customButtom('9'),
                  customButtom('8'),
                  customButtom('7'),
                  customButtom('+'),
                ],
              ),
              Row(
                children: [
                  customButtom('6'),
                  customButtom('5'),
                  customButtom('4'),
                  customButtom('-'),
                ],
              ),
              Row(
                children: [
                  customButtom('3'),
                  customButtom('2'),
                  customButtom('1'),
                  customButtom('*'),
                ],
              ),
              Row(
                children: [
                  customButtom('C'),
                  customButtom('0'),
                  customButtom('='),
                  customButtom('/'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}