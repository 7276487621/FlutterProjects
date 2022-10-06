import 'package:animationproject/animatedBuilderWidget.dart';
import 'package:animationproject/animatedIcon.dart';
import 'package:animationproject/simpleCalculator.dart';
import 'package:flutter/material.dart';
import 'animatedContainer.dart';
import 'animatedCrossFadeWidget.dart';
import 'animatedDefaultTextStyleWidget.dart';
import 'animatedListWidget.dart';
import 'animatedModalBarrierWidget.dart';
import 'animatedOpacity.dart';
import 'animatedPadding.dart';
import 'animatedPhysicalModal.dart';
import 'animatedPositionedWidget.dart';
import 'animatedRotation.dart';
import 'animatedSize.dart';
import 'animatedSwitcher.dart';
import 'animatedWidgetAcrossScreen.dart';
import 'detailHeroScreen.dart';

void main() {
  runApp(MaterialApp(
    // home: Animation(),
      debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=>const Animation(),
      'AnimatedBuilderWidget':(context)=>const AnimatedBuilderWidget(),
      'AnimatedContainer':(context)=> const AnimatedContainerWidget(),
      'AnimatedCrossFadeWidget':(context)=> const AnimatedCrossFadeWidget(),
      'AnimatedDefaultTextStyleWidget':(context)=> const AnimatedDefaultTextStyleWidget(),
      'AnimatedIcon':(context)=> const AnimatedIconWidget(),
      'AnimatedListWidget':(context)=> const AnimatedListWidget(),
      'AnimatedModalBarrierWidget':(context)=> const AnimatedModalBarrierWidget(),
      'AnimatedOpacity':(context)=> const AnimatedOpacityWidget(),
      'AnimatedPaddingWidget':(context)=> const AnimatedPaddingWidget(),
      'AnimatedPhysicalModalWidget':(context)=> const AnimatedPhysicalModalWidget(),
      'AnimatedPositionedWidget':(context)=> const AnimatedPositionedWidget(),
      'AnimatedRotationWidget':(context)=> const AnimatedRotationWidget(),
      'AnimatedSizeWidget':(context)=> const AnimatedSizeWidget(),
      'AnimatedSwitcherWidget':(context)=> const AnimatedSwitcherWidget(),
      'SimpleCalculator':(context)=> const SimpleCalculator(),
      'AnimatedWidgetAcrossScreen':(context)=> const AnimatedWidgetAcrossScreen(),
      'DetailHeroScreen':(context)=> const DetailHeroScreen(),
    },
  ));

}


class Animation extends StatefulWidget {
  const Animation({Key? key}) : super(key: key);

  @override
  State<Animation> createState() => _AnimationState();
}

///AnimatedAlign widgets

class _AnimationState extends State<Animation> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(


      child: ListView(
        padding: EdgeInsets.all(15.0),
        children: [
          GestureDetector(
            onTap:(){
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: Container(
                width: double.infinity,
                height: 250,
                color: Colors.blueGrey,
                child: AnimatedAlign(
                  alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                  duration: const Duration(seconds:  1),
                  curve: Curves.fastOutSlowIn,
                  child:FlutterLogo(size: 50.0,) ,
                ),
              ),
            ),
          ),

          SizedBox(height: 10.0,),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedBuilderWidget');
          }, child: Text('AnimatedBuilderWidget',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),

          ),
          SizedBox(height: 10.0,),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedContainer');
          }, child: Text('AnimatedContainer',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),

          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedCrossFadeWidget');
          }, child: Text('AnimatedCrossFade',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedDefaultTextStyleWidget');
          }, child: Text('AnimatedDefaultTextStyle',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedIcon');
          }, child: Text('AnimatedIcon',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedListWidget');
          }, child: Text('AnimatedListWidget',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedModalBarrierWidget');
          }, child: Text('AnimatedModalBarrierWidget',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedOpacity');
          }, child: Text('AnimatedOpacity',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedPhysicalModalWidget');
          }, child: Text('AnimatedPhysicalModalWidget',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedPositionedWidget');
          }, child: Text('AnimatedPositionedWidget',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedRotationWidget');
          }, child: Text('AnimatedRotationWidget',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedSizeWidget');
          }, child: Text('AnimatedSizeWidget',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedSwitcherWidget');
          }, child: Text('AnimatedSwitcherWidget',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedPaddingWidget');
          }, child: Text('AnimatedPaddingWidget',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'SimpleCalculator');
          }, child: Text('SimpleCalculatorApp',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'AnimatedWidgetAcrossScreen');
          }, child: Text('AnimatedWidgetAcrossScreen',style: TextStyle(
            color: Colors.white,
          ),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
            ),
          ),
        ],
      ),


    );
  }
}

