import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodyapp/space.dart';
import 'package:foodyapp/utils/screenUtils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../firebase_realtime_database.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  initState() {
    super.initState();
    FireBaseRealTime.selectValue();
    Timer(Duration(seconds: 3), () {
      setState(() {});
    });
  }

  bool validation = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: appbar(),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 130),
                            child: Container(
                              height: 400,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 3.0,
                                        spreadRadius: 1.0)
                                  ]),
                              child: Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    verticalSpace(30),
                                    const Text(
                                      'Login',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    verticalSpace(30),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: TextFormField(
                                        controller: emailController,
                                        validator: (value) {
                                          return (value!.isEmpty)
                                              ? 'Enter Email'

                                                  : null;
                                        },
                                        cursorColor: Colors.orange,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(Icons.email_outlined,
                                              color: Colors.black),
                                          hintText: 'Email',
                                          hintStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17.0),
                                        ),
                                      ),
                                    ),
                                    verticalSpace(20),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: TextFormField(
                                        controller: passwordController,
                                        validator: (value) {
                                          return (value!.isEmpty)?'Enter password':null;
                                        },
                                        cursorColor: Colors.deepOrange,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                              Icons.vpn_key_outlined,
                                              color: Colors.black),
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17.0),
                                        ),
                                      ),
                                    ),
                                    verticalSpace(20),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 110),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Forgot Password ?',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    verticalSpace(30),
                                    MaterialButton(
                                      onPressed: ()  {
                                        formKey.currentState!.validate();
                                        bool match = false;
                                        FireBaseRealTime.data
                                            .forEach((element) {
                                          if (element['email'] ==
                                                  emailController.text &&
                                              element['password'] ==
                                                  passwordController.text) {
                                            match = true;

                                            Navigator.pushReplacementNamed(
                                                context, 'Home');
                                          }
                                        });
                                        if (!match)
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content:
                                                  Text('Invalid Credential'),
                                            ),
                                          );
                                      },
                                      color: Colors.deepOrangeAccent,
                                      height: 40,
                                      minWidth: 150,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Text(
                                        'Login',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        verticalSpace(15),
                        GestureDetector(
                          onTap: () {
                            {
                              Navigator.pushNamed(context, 'SignUp');
                            }
                          },
                          child: const Text(
                            'Don\'t have an account? Sign up',
                            style: TextStyle(),
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}
