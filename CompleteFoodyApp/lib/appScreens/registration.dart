
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodyapp/firebase_realtime_database.dart';
import 'package:foodyapp/main.dart';
import 'package:foodyapp/space.dart';
import 'package:foodyapp/utils/screenUtils.dart';
import 'package:foodyapp/utils/string.dart';

import '../utils/colors.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  bool agree = false;
  @override
  Widget build(BuildContext context) {
    ScreenUtils.setValue(context);
    return SafeArea(
      child: Scaffold(
          appBar:appbar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 30.0,bottom: 20.0),
                    child: Container(
                      height: 550,
                      width: 350,
                      decoration: BoxDecoration(
                          // color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(

                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            blurStyle: BlurStyle.outer

                          ),
                        ]
                      ),
                      child: Form(
                          key: formKey,
                        child: Column(
                          children: [
                            verticalSpace(50.0),
                            const Text(txtRegistration,style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                            verticalSpace(50.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: nameController,
                                    validator: (value){
                                      return (value!.isEmpty) ? 'Please Enter Name':null;
                                    },
                                    cursorColor: deeporange,
                                    decoration: const InputDecoration(
                                      hintText: txtName,
                                      hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0
                                      ),
                                      prefixIcon: Icon(Icons.person_outline_rounded,size: 30.0,color: Colors.black,),
                                    ),
                                  ),
                                  verticalSpace(10.0),
                                  TextFormField(
                                    controller: emailController,
                                    validator: (value){
                                      bool emailRegx = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(emailController.text);
                                      return (value!.isEmpty)?'Please Enter Email':(!emailRegx)?'Please Enter Valid Email':
                                      null;
                                    },
                                    cursorColor: deeporange,
                                    decoration: const InputDecoration(
                                      hintText: txtEmailId,
                                      hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0
                                      ),
                                      prefixIcon: Icon(Icons.email_outlined,size: 30.0,color: Colors.black,),
                                    ),
                                  ),
                                  verticalSpace(10.0),
                                  TextFormField(
                                    controller: passwordController,
                                    validator: (value){
                                      bool passwordRegx = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                          .hasMatch(passwordController.text);
                                      return (value!.isEmpty)?'Please Enter password':(!passwordRegx)?'Please Enter Valid Password':
                                      null;
                                    },
                                    cursorColor: deeporange,
                                    decoration: const InputDecoration(
                                      hintText: txtPassword,
                                      hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0
                                      ),
                                      prefixIcon: Icon(Icons.vpn_key_outlined,size: 25.0,color: Colors.black,),
                                    ),
                                  ),
                                  verticalSpace(10.0),
                                  TextFormField(
                                    controller: phoneController,
                                    validator: (value){
                                      bool phoneRegx = RegExp( r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                          .hasMatch(phoneController.text);
                                      return (value!.isEmpty)?'Please Enter phone number':(!phoneRegx)?'Please Enter Valid phone number':
                                      null;
                                    },
                                    cursorColor: deeporange,
                                    decoration: const InputDecoration(
                                      hintText:txtphoneNumber,
                                      hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0
                                      ),
                                      prefixIcon: Icon(Icons.phone_android,size: 25.0,color: Colors.black,),
                                    ),
                                  ),
                                  verticalSpace(10.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Checkbox(value: agree, onChanged: (value){
                                        setState(() {
                                          agree = value!;
                                        });
                                      },activeColor: deeporange,),
                                      Row(
                                        children: [
                                          const Text('I agree the ',style: TextStyle(
                                              fontSize: 16.0
                                          ),),
                                          Text('Terms & Conditions',style: TextStyle(
                                              color: deeporange,
                                              fontSize: 16.0
                                          ),)
                                        ],
                                      )

                                    ],
                                  ),
                                  verticalSpace(10.0),
                                  Container(
                                    height: 35,
                                    width: 160,
                                    child: TextButton(

                                      style: ButtonStyle(
                                        elevation: MaterialStateProperty.all(5.0),
                                          backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
                                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20.0)
                                          ))
                                      ),
                                      onPressed: () {
                                        print('***${formKey.currentState!.validate()}');
                                          if(formKey.currentState!.validate()){
                                            FireBaseRealTime.InsertValue(context,
                                            name: nameController.text,
                                              email: emailController.text,
                                              password: passwordController.text,
                                              mobile: phoneController.text,
                                            );
                                            Timer(Duration(seconds: 3), () {
                                              Navigator.pushNamed(context, 'Login');
                                            });

                                          }
                                        setState(() {
                                        });
                                      },
                                      child: const Text(
                                        'SIGN UP',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        ),
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
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'Login');
                      },
                        child: Text('Already have an account? Login')
                    )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
