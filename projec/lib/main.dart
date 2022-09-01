
import 'package:flutter/material.dart';
import 'package:projec/Screens/InstagramApp/instagram_screen.dart';
import 'package:projec/Screens/switchWidgets/allSwitchWidhets.dart';
import 'package:projec/practicehomework.dart';
import 'package:projec/webview_demo.dart';
import 'Screens/InstagramApp/sendPage.dart';
import 'Screens/registration/bottomNavigationBar.dart';
import 'Screens/registration/registration_form.dart';
import 'Screens/restaurantApp/restaurant_screen.dart';
import 'Screens/restaurantApp/restaurantdetail.dart';
import 'Screens/week3/GridView.dart';
import 'Screens/week3/lecture3.dart';
import 'Screens/whats_up/whatsappdetail.dart';
import 'Screens/whats_up/whatup_screen.dart';
import 'flipkartdemo.dart';
import 'homework.dart';
import 'stateful_demo.dart';
import 'statefulldemo.dart';
import 'uidemo1.dart';



main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: UiDemo1(),
    // home: FlipkartApp(),
    // home:Registration(),
    // home: WhatsUp(),
    // home: RestaurantApp(),
    // home: RestaurantDetails(),
    // home: WatsappDetail(),
    //   home: Lecture3(),
    // home:BottomNavigationBarExample(),

    initialRoute: '/',
    routes: {
      '/':(context)=>HelloWorld(),
      'watsapp':(context)=>WhatsUp(),
      'watsappDetail':(context)=> WatsappDetail(),
      'flipkart':(context)=>FlipkartApp(),
      'uiDemo':(context)=> UiDemo1(),
      'restaurantApp':(context)=>const RestaurantApp(),
      'registration':(context)=>const Registration(),
      'lession3':(context)=>const Lecture3(),
      'bottomNavigationBar':(context)=>const BottomNavigationBarExample(),
      'allSwitchWidgets':(context)=>const AllSwitchWidgets(),
      'gridViewConcept':(context)=>  GridViewConcept(),
      'InstagramApp':(context)=>const Instagram(),
      'Webview':(context)=>const WebviewDemo(),
      'sendPage':(context)=>const SendPage(),
    },
  ));
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  'HelloWorld!!',
                  style:  TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange)
              ),
              MaterialButton(onPressed: (){
                    Navigator.pushNamed(context, 'watsapp');
              },child:const Text('WatsappApp') ,),

              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'flipkart');
              },child:const Text('Flipkart') ,),

              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'uiDemo');
              },child:const Text('UiDemo') ,),

              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'restaurantApp');
              },child:const Text('Restaurant') ,),

              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'registration');
              },child:const Text('Registration') ,),

              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'lession3');
              },child:const Text('Lession3') ,),

              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'bottomNavigationBar');
              },child:const Text('BottomNavigationBar') ,),


              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'allSwitchWidgets');
              },child:const Text('AllSwitchWidgets') ,),

              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'gridViewConcept');
              },child:const Text('GridViewConcept') ,),

              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'InstagramApp');
              },
              color: Color.fromRGBO(138, 58, 185 ,0.7),
                child:const Text('Instagram') ,
              ),
              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'Webview');
              },
                child:const Text('Webview') ,
              ),
            ],
          )


      ),
    );
  }
}
