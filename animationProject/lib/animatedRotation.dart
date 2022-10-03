
import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(50.0),
            child: AnimatedRotation(
              turns:  turns,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: 100,),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  turns += 1/4;

                });
              },
              child: const Text('Rotate Logo'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent
            ),
          ),
        ],
      ),
    );
  }
}
