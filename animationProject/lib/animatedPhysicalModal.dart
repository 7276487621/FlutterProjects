
import 'package:flutter/material.dart';

///AnimatedPhysicalModel

class AnimatedPhysicalModalWidget extends StatefulWidget {
  const AnimatedPhysicalModalWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModalWidget> createState() => _AnimatedPhysicalModalWidgetState();
}

class _AnimatedPhysicalModalWidgetState extends State<AnimatedPhysicalModalWidget> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
                child: const SizedBox(
                  height: 120.0,
                  width: 120.0,
                  child: Icon(Icons.android_outlined),
                ),
                shape: BoxShape.rectangle,
                elevation: _isFlat ? 0:6.0,
                color: Colors.white,
                shadowColor: Colors.black,
                duration: const Duration(milliseconds:  500),
                curve: Curves.fastOutSlowIn,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _isFlat = !_isFlat;
                  });
                },
                child: Text('Click')
            )
          ],
        ),
      ),
    );
  }
}
