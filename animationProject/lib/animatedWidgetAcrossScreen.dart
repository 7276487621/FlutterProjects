
import 'package:flutter/material.dart';

class AnimatedWidgetAcrossScreen extends StatefulWidget {
  const AnimatedWidgetAcrossScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedWidgetAcrossScreen> createState() => _AnimatedWidgetAcrossScreenState();
}

class _AnimatedWidgetAcrossScreenState extends State<AnimatedWidgetAcrossScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Main Screen'),
     ),

      body: GestureDetector(
        child: Hero(
            tag: 'ImageHero', 
            child: Image.network('https://picsum.photos/200/300')
        ),
        onTap: (){
          Navigator.pushNamed(context, 'DetailHeroScreen');
        },
      ),
    );
  }
}
