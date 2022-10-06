
import 'package:flutter/material.dart';

class DetailHeroScreen extends StatefulWidget {
  const DetailHeroScreen({Key? key}) : super(key: key);

  @override
  State<DetailHeroScreen> createState() => _DetailHeroScreenState();
}

class _DetailHeroScreenState extends State<DetailHeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
              tag: 'ImageHero',
              child: Image.network('https://picsum.photos/200/300')
          ),
        ),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
