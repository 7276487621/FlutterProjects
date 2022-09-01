import 'package:flutter/material.dart';

class Lecture2 extends StatelessWidget {
  EdgeInsets padding = const EdgeInsets.only(left: 30.0);
  Radius radius = const Radius.circular(20.0);
  String breakfast = 'Breakfast';
  String breadApple = 'Bread,\nPeanut Butter\nApple';
  String kcal = '525';
  String txtKCal = 'kcal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 250.0,
              width: 150.0,
              padding: padding,
              margin: padding,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.red, width: 3.0),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.orange, Colors.white],
                  ),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 20,
                        color: Colors.blue,
                        offset: Offset(20, 20)),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    topRight: Radius.circular(100.0),
                  ),
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  breakfast,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  breadApple,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      kcal,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      txtKCal,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
           const SizedBox(height: 50,),
            Container(
            color: Colors.green.shade300,
            height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.add_alarm_sharp),
                  Icon(Icons.add_alarm_sharp),
                  Icon(Icons.add_alarm_sharp),
                  Icon(Icons.add_alarm_sharp),
                ],
              ),
          )

        ],

      ),
    );
  }
}
