import 'dart:async';


import 'package:flutter/material.dart';
import 'package:projec/Screens/InstagramApp/instagram_screen.dart';
import 'package:projec/Screens/switchWidgets/allSwitchWidhets.dart';

import 'package:projec/webview_demo.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Screens/InstagramApp/sendPage.dart';
import 'Screens/registration/bottomNavigationBar.dart';
import 'Screens/registration/registration_form.dart';
import 'Screens/restaurantApp/restaurant_screen.dart';

import 'Screens/week3/GridView.dart';
import 'Screens/week3/lecture3.dart';
import 'Screens/whats_up/whatsappdetail.dart';
import 'Screens/whats_up/whatup_screen.dart';
import 'flipkartdemo.dart';
import 'uidemo1.dart';

bool? login =false;

Future getValue() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

    login = preferences.getBool('login')??false;

}

main() {
  WidgetsFlutterBinding.ensureInitialized();
  getValue().then((value) {
    runApp(MaterialApp(
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

      // initialRoute: login! ?'watsapp': 'registration',
      initialRoute: '/',
      routes: {
        '/': (context) => HelloWorld(),
        'watsapp': (context) => WhatsUp(),
        'watsappDetail': (context) => WatsappDetail(),
        'flipkart': (context) => FlipkartApp(),
        'uiDemo': (context) => UiDemo1(),
        'restaurantApp': (context) => const RestaurantApp(),
        'registration': (context) => const Registration(),
        'lession3': (context) => const Lecture3(),
        'bottomNavigationBar': (context) => const BottomNavigationBarExample(),
        'allSwitchWidgets': (context) => const AllSwitchWidgets(),
        'gridViewConcept': (context) => GridViewConcept(),
        'InstagramApp': (context) => const Instagram(),
        'Webview': (context) => const WebviewDemo(),
        'sendPage': (context) => const SendPage(),
      },
    ));
  });
}

class HelloWorld extends StatelessWidget {

  // Future<void> _launchUrl() async {
  //   await launchUrl(Uri.parse('https://flutter.dev'));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('HelloWorld!!',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange)),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'watsapp');
            },
            child: const Text('WatsappApp'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'flipkart');
            },
            child: const Text('Flipkart'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'uiDemo');
            },
            child: const Text('UiDemo'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'restaurantApp');
            },
            child: const Text('Restaurant'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'registration');
            },
            child: const Text('Registration'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'lession3');
            },
            child: const Text('Lession3'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'bottomNavigationBar');
            },
            child: const Text('BottomNavigationBar'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'allSwitchWidgets');
            },
            child: const Text('AllSwitchWidgets'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'gridViewConcept');
            },
            child: const Text('GridViewConcept'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'InstagramApp');
            },
            color: Color.fromRGBO(138, 58, 185, 0.7),
            child: const Text('Instagram'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'Webview');
            },
            child: const Text('Webview'),
          ),

          MaterialButton(
            onPressed: () async {
              await launchUrl(Uri.parse('https://flutter.dev'));
            },
            child: const Text('UrlLauncher'),
          ),

          MaterialButton(
            onPressed: () async {
              await launchUrl(Uri.parse('tel:+1-555-010-999'));
            },
            child: const Text('Contact Us'),
          ),

          MaterialButton(
            onPressed: () async {
              await launchUrl(Uri.parse('mailto:smith@example.org'));
            },
            child: const Text('Mail Us'),
          ),

          MaterialButton(
            onPressed: () async {
              await launchUrl(Uri.parse('sms:5550101234'));
            },
            child: const Text('Message Us'),
          ),

          // MaterialButton(
          //   onPressed: ()  {
          //      Share.share('check out my website https://example.com');
          //   },
          //   child: const Text('Share'),
          // ),


        ],
      )),
    );
  }
}
