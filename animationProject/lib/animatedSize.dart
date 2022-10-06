
import 'package:flutter/material.dart';

///AnimatedSize

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _size = _size == 300 ? 100:300;
        });
      },
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: AnimatedSize(
            curve: Curves.easeIn,
            duration: const Duration(seconds: 1),
            child: FlutterLogo(size: _size,),
          ),
        ),
      ),
    );
  }
}
