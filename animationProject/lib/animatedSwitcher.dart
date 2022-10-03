
import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  const AnimatedSwitcherWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(
                  fontSize: 40.0,
                ),
                key: ValueKey(_count),
              ),
              transitionBuilder: (Widget child, Animation<double> animation){
                  return ScaleTransition(scale: animation,child: child,);
              },
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                _count +=1;
              });
            }, child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
