import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projec/Screens/registration/space.dart';
import 'package:projec/utils/colors.dart';
import 'package:projec/utils/string.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool password = false;
  String? datePicker;
  String? userNameError;
  String? emailError;

  //Form with Validation

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dateEditController = TextEditingController();
  TextEditingController timeEditController = TextEditingController();

  ///RadioButton
  String male = 'Male';
  String female = 'Female';
  String other = 'Other';
  String gender = 'Male';

  ///CheckBox
  bool cricket = false;
  bool volleyball = false;
  bool reading = false;

  String userName = '';
  String emailId = '';
  String passwordText = '';
  String genderr = '';
  String checkBoxValaue = '';
  String checkBoxCricket = '';
  String checkBoxVollyball = '';
  String checkBoxReading = '';

  void _setText(String gender, bool cricket, bool volleyball, bool reading) {
    setState(() {
      userName = 'UserName : ${usernameController.text}';
      emailId = 'EmailId : ${emailController.text}';
      passwordText = 'Password:${passwordController.text}';
      genderr = gender;
      checkBoxCricket = cricket ? 'Cricket' : '';
      checkBoxVollyball = volleyball ? 'Volleyball' : '';
      checkBoxReading = reading ? 'Reading' : '';
    });
  }

  final ImagePicker _picker = ImagePicker();
  File? file;

  getImage() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);

    file = File(photo!.path);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue.shade300,
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              blue900,
              blue200,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpace(50),
                  GestureDetector(
                    onTap: () {
                      getImage();
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: file == null
                          ? const NetworkImage(
                              'https://media.istockphoto.com/vectors/user-avatar-profile-icon-black-vector-illustration-vector-id1209654046?k=20&m=1209654046&s=612x612&w=0&h=Atw7VdjWG8KgyST8AXXJdmBkzn0lvgqyWod9vTb2XoE=')
                          : FileImage(file!) as ImageProvider,
                    ),
                  ),
                  verticalSpace(20),
                  Text(
                    txtRegistrationForm,
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                  verticalSpace(20.0),
                  TextFormField(
                    controller: usernameController,
                    validator: (value) {
                      return (value!.isEmpty) ? 'Please Enter User Name' : null;
                    },

                    ///for TextField we used below code
                    //onChange:(value){
                    // if(value.isEmpty){
                    //   error = 'Please Enter User Name';
                    //   setState((){});
                    //    }
                    // else{
                    //   error = null;
                    //   setState((){});
                    // }
                    // }

                    cursorColor: white,
                    style: TextStyle(
                      color: white,
                    ),
                    decoration: InputDecoration(
                        hintText: txtUserName,
                        labelText: txtUserName,
                        //errorText: userNameError,
                        labelStyle: TextStyle(color: white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: white,
                          ),
                        ),
                        filled: true,
                        fillColor: blue900,
                        prefixIcon: Icon(
                          Icons.person,
                          color: white,
                        )),
                  ),
                  verticalSpace(20.0),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(emailController.text);
                      return (value!.isEmpty)
                          ? 'Please Enter Email'
                          : (!emailValid)
                              ? 'Please Enter Valid Email'
                              : null;
                    },
                    cursorColor: white,
                    style: TextStyle(
                      color: white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: txtEmailId,
                        labelText: txtEmailId,
                        //errorText: userNameError,
                        labelStyle: TextStyle(color: white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: white,
                          ),
                        ),
                        filled: true,
                        fillColor: blue900,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: white,
                        )),
                  ),
                  verticalSpace(20.0),
                  TextFormField(
                    controller: passwordController,
                    cursorColor: white,
                    style: TextStyle(
                      color: white,
                    ),
                    decoration: InputDecoration(
                      hintText: txtPassword,
                      labelText: txtPassword,
                      //errorText: userNameError,
                      labelStyle: TextStyle(color: white),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: white,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: white)),
                      filled: true,
                      fillColor: blue900,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: white,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              password = !password;
                            });
                          },
                          icon: Icon(
                            password ? Icons.visibility_off : Icons.visibility,
                            color: white,
                          )),
                    ),
                    obscureText: password,
                  ),
                  verticalSpace(20.0),
                  TextFormField(
                    controller: dateEditController,
                    cursorColor: white,
                    style: TextStyle(
                      color: white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Select Date',
                      labelText: 'Date',
                      //errorText: userNameError,
                      labelStyle: TextStyle(color: white),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: white,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: white)),
                      filled: true,
                      fillColor: blue900,
                      suffixIcon: IconButton(
                          onPressed: () async {
                            DateTime? date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2023),
                            );
                            setState(() {
                              dateEditController.text =
                                  '${date!.day}/ ${date.month}/${date.year}';
                            });
                          },
                          icon: Icon(
                            Icons.calendar_month,
                            color: white,
                          )),
                    ),
                    obscureText: password,
                  ),
                  verticalSpace(20.0),
                  TextFormField(
                    controller: timeEditController,
                    cursorColor: white,
                    style: TextStyle(
                      color: white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Select Time',
                      labelText: 'Time',
                      //errorText: userNameError,
                      labelStyle: TextStyle(color: white),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: white,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: white)),
                      filled: true,
                      fillColor: blue900,
                      suffixIcon: IconButton(
                          onPressed: () async {
                            TimeOfDay? time = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            setState(() {
                              timeEditController.text =
                                  '${time!.hour}:${time.minute} ${time.periodOffset == 0 ? 'AM' : 'PM'}';
                            });
                          },
                          icon: Icon(
                            Icons.timer,
                            color: white,
                          )),
                    ),
                    obscureText: password,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Gender',
                        style: TextStyle(
                          color: white,
                          fontSize: 20.0,
                        ),
                      ),
                      Radio(
                        activeColor: white,
                        value: male,
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Text(
                        male,
                        style: TextStyle(color: white),
                      ),
                      Radio(
                        activeColor: white,
                        value: female,
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Text(
                        female,
                        style: TextStyle(color: white),
                      ),
                      Radio(
                        activeColor: white,
                        value: other,
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Text(
                        other,
                        style: TextStyle(color: white),
                      )
                    ],
                  ),
                  verticalSpace(20.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          'Hobby',
                          style: TextStyle(
                            color: white,
                            fontSize: 20.0,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          value: cricket,
                          activeColor: white,
                          onChanged: (value) {
                            setState(() {
                              cricket = value!;
                            });
                          },
                        ),
                        Text(
                          'Cricket',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          value: volleyball,
                          activeColor: white,
                          onChanged: (value) {
                            setState(() {
                              volleyball = value!;
                            });
                          },
                        ),
                        Text(
                          'Volleyball',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          value: reading,
                          activeColor: white,
                          onChanged: (value) {
                            setState(() {
                              reading = value!;
                            });
                          },
                        ),
                        Text(
                          'Reading',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(20.0),
                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          if (formKey.currentState!.validate()) {
                            _setText(gender, cricket, volleyball, reading);
                          }
                        });
                      },
                      color: Colors.yellow.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Create Account',
                        style: TextStyle(color: white),
                      ),
                    ),
                  ),
                  verticalSpace(10.0),
                  Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: black, width: 1.0, style: BorderStyle.solid),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          emailId,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          passwordText,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          genderr,
                          style: const TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        // Text(checkBoxValaue),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              checkBoxCricket,
                              style: const TextStyle(fontSize: 17),
                            ),
                            horizontalSpace(5.0),
                            Text(
                              checkBoxVollyball,
                              style: const TextStyle(fontSize: 17),
                            ),
                            horizontalSpace(5.0),
                            Text(
                              checkBoxReading,
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
