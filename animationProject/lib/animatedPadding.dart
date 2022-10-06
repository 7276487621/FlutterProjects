
import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            ElevatedButton(
                onPressed: (){
                    setState(() {
                      padValue = padValue == 0.0 ? 100.0 : 0.0;
                    });
                },
                child: Text('Change Padding'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
              ),
            ),
          Text('Padding= $padValue'),
          AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds:2),
              curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              color: Colors.orangeAccent,

            ),
          ),
        ],
      ),
    );
  }
}
