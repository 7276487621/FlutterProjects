import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodyapp/appScreens/HomePage.dart';
import 'package:foodyapp/appScreens/LoginPage.dart';
import 'package:foodyapp/space.dart';

import 'appScreens/categoryPage.dart';
import 'appScreens/detailPage.dart';
import 'appScreens/registration.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: LoginSinup(),
    // home: Registration(),


    initialRoute: '/',
    routes: {
      '/':(context) =>const LoginSinup(),
      'SignUp':(context)=>const Registration(),
      'Login':(context)=>const LoginPage(),
      'Home':(context)=>const HomePage(),
      'DetailPage':(context)=>const DetailPage(),
      'CategoryPage':(context)=>const CategoryPage(),
    },
  ));
}

class LoginSinup extends StatefulWidget {
  const LoginSinup({Key? key}) : super(key: key);

  @override
  State<LoginSinup> createState() => _LoginSinupState();
}

class _LoginSinupState extends State<LoginSinup> {
   Widget fontstyle(
          {double fontsize = 30,
          FontWeight weight = FontWeight.w500,
          String fontFamily = '',
          String text = 'the',
            Color color = Colors.black,
          }) =>
       Text(
         text,
        style: TextStyle(
            fontSize: fontsize,
            fontWeight: weight,
            fontFamily: fontFamily,
            color: color
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247,252,255,1),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                children: [
                  fontstyle(fontsize: 25,fontFamily: 'Billabong'),
                  fontstyle(text: 'FoodyApp',fontFamily: 'Billabong',fontsize: 35.0),
                  fontstyle(text: 'planner',color: Colors.deepOrangeAccent,fontsize: 15.0),
                ],
              ),
            ),
            verticalSpace(20.0),
            fontstyle(text:'Tasty food buy has never\n been this much fun.',fontsize: 18,color: Colors.deepOrangeAccent),
            verticalSpace(40.0),
            Container(
              height: 40,
              width: 200,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ))
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'Login');
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                    FontWeight.w600,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            verticalSpace(20.0),
            fontstyle(text: 'Don\'t have an account?',fontsize: 12.0),
            verticalSpace(15.0),
            Container(
              height: 40,
              width: 200,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ))
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'SignUp');
                },
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                    FontWeight.w600,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            verticalSpace(10.0),
            Expanded(child: Image(image: AssetImage('images/foodapp.png')))
          ],
        ),
      ),
    );
  }
}
