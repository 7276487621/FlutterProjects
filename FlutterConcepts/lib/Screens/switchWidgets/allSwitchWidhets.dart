import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projec/Screens/registration/space.dart';

class AllSwitchWidgets extends StatefulWidget {
  const AllSwitchWidgets({Key? key}) : super(key: key);

  @override
  State<AllSwitchWidgets> createState() => _AllSwitchWidgetsState();
}

class _AllSwitchWidgetsState extends State<AllSwitchWidgets> {
  bool isSwitched = false;
  bool isCuperSwitch = false;
  double currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.toggle_off),
        title: const Text('All SwitchWidgets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              color: Colors.tealAccent,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'DarkTheme',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      horizontalSpace(3.0),
                      Transform.scale(
                        scale: 1.5,
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Switch widgets',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
            ),
            verticalSpace(5.0),
            Container(
              height: 70,
              color: Colors.tealAccent,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'AutoBrightness',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      horizontalSpace(3.0),
                      Transform.scale(
                        scale: 1.0,
                        child: CupertinoSwitch(
                          value: isCuperSwitch,

                          onChanged: (value) {
                            setState(() {
                              isCuperSwitch = value;
                            });
                          },
                          // dragStartBehavior: DragStartBehavior.start,
                          activeColor: Colors.purple,
                          trackColor: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Cupertino Switch',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
            ),
            verticalSpace(5.0),
            Container(
                height: 90,
                color: Colors.tealAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Slider(
                      value: currentSliderValue,
                      max: 100,
                      divisions: 5,
                      label: currentSliderValue.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          currentSliderValue = value;
                        });
                      },
                    ),
                    const Text(
                      'Brightness Slider',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            verticalSpace(100.0),
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.purple,
                ),
                Container(
                  width: 130,
                  height: 130,
                  color: Colors.lightBlueAccent,
                )
              ],
            ),
            verticalSpace(10.0),
            const Text(
              'Stack in Flutter',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
