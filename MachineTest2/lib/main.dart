import 'package:flutter/material.dart';
import 'package:machinetest2/displayList.dart';
import 'package:machinetest2/sqflitedb.dart';
import 'package:machinetest2/studentInfoPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> getValue() async{
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.getBool('log')??false;
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  getValue().then((value) {
    runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: value ?'studentInfo':'/',
          // initialRoute: '/',
          routes: {
            '/': (context) => const LoginPage(),
            'studentInfo': (context) => const StudentInfo(),
            'DisplayList': (context) => DisplayListClass(SqfLiteDB.data),
          },
        )
    );
  });
}

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool password = false;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: [
         Container(
           height: 740,
           width: double.infinity,
           decoration: BoxDecoration(
             color: Color(0xFF006A75),
           ),
           child: Padding(
             padding: const EdgeInsets.only(top: 230.0,left: 30.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text('Login',style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  fontWeight: FontWeight.w300
                ),)
               ],
             ),
           ),
         ),


         Container(
           margin: EdgeInsets.only(top: 293.0),
           height: 445,
           width: double.infinity,
           decoration: BoxDecoration(
             color: Color(0xFFD1D1D1),
             borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),

           ),
           child: Form(
             key: formKey,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 50.0),
                 child: ListView(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 80.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           TextFormField(
                             controller: emailController,
                             validator: (value) {
                               bool emailRegx = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                   .hasMatch(emailController.text);
                               return (value!.isEmpty)?'Please Enter Email':(!emailRegx)?'Please Enter Valid Email':
                               null;
                             },
                             decoration: InputDecoration(
                                 isCollapsed: true,
                                 hintText: 'Email',
                                 hintStyle: TextStyle(
                                     height: 2.3
                                 ),
                               prefixIcon: Container(
                                 height: 5,
                                 width: 5,
                                 child: Image(image: AssetImage('images/mail.png')),
                               ),
                                 // Image(image: AssetImage('images/mail.svg')),
                                 filled: true,
                                 fillColor: Colors.white,
                                 enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide.none,
                                   borderRadius: BorderRadius.circular(20),

                                 ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide.none,
                                 borderRadius: BorderRadius.circular(20),

                               ),
                             ),
                           ),
                           SizedBox(height: 20.0,),
                           TextFormField(
                             controller: passwordController,
                             validator: (value) {
                               return (value!.isEmpty)?'Please Enter Password': null;

                             },
                             decoration: InputDecoration(
                                 isCollapsed: true,
                                 hintText: 'password',
                                 hintStyle: TextStyle(
                                     height: 2.3
                                 ),
                               prefixIcon: Container(
                                 height: 5,
                                 width: 5,
                                 child: Image(image: AssetImage('images/Layer2.png')),
                               ),
                                 suffixIcon: IconButton(
                                     icon: Icon(password?Icons.visibility_off:Icons.visibility),
                                   onPressed: (){
                                       setState(() {
                                         password =!password;
                                       });
                                   },
                                 ),
                                 // Image(image: AssetImage('images/mail.svg')),
                                 filled: true,
                                 fillColor: Colors.white,
                                 enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide.none,
                                   borderRadius: BorderRadius.circular(20),

                                 ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide.none,
                                 borderRadius: BorderRadius.circular(20),

                               ),
                             ),
                             obscureText: password,
                           ),
                           ButtonBar(
                             children: [
                               Text('Forget Password',style: TextStyle(
                                   color: Color(0xFF006A75)
                               ),)
                             ],
                           ),
                           SizedBox(height: 40.0,),

                           Container(
                             height: 50,
                             width: double.infinity,
                             decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(20.0))
                             ),
                             child:MaterialButton(
                               onPressed: () async {

                                 if(formKey.currentState!.validate()){
                                   SharedPreferences prefer = await SharedPreferences.getInstance();
                                   prefer.setBool('log', true);
                                   Navigator.pushReplacementNamed(context, 'studentInfo');
                                 }
                               },
                               color: Color(0xFF006A75),
                               child: Text('Login',style: TextStyle(
                                 color: Colors.white60,
                               ),
                               ),
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20.0),
                               ),
                             ),
                           ),

                         ],
                       ),
                     ),
                   ],

                 ),
               ),
           ),
         ),
         Positioned(
           top:145.0,
           left: 170.0,
           child: Container(
             height: 200,
             width: 200,
             decoration: BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage('images/Group.png'))
             ),

           ),
         ),
       ],

      ),
    );
  }
}


