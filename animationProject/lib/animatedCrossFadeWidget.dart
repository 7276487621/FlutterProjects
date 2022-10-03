
import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(onPressed: (){
          setState(() {
            _bool = !_bool;
          });
        }, child: Text(
          'Switch',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        ),
        AnimatedCrossFade(
            firstChild: Image.asset('images/Profilepic.png'),
            secondChild: Image.asset('images/FlutterLogo.png'),
            crossFadeState: _bool ? CrossFadeState.showFirst: CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
        ),
      ],
    );
  }
}
