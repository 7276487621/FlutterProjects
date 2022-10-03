
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:machinetest2/sqflitedb.dart';
import 'package:intl/intl.dart';
class StudentInfo extends StatefulWidget {
  const StudentInfo({Key? key}) : super(key: key);

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {

  void clearInputFields(){
    studentNameController.clear();
    studentEmailController.clear();
    ageController.clear();
    gender = male;
    branch = science;
    dropDownvalue = dropDownScienceSubjectList.first;
    dropDownDefault =dropDownScienceSubjectList.first;
    defaultDay = 'Date';
    defaultMonth = 'Month';
    defaultYear = 'Year';
  }

  String time='?';
  int year = 0;
  @override
  void initState() {
    super.initState();
    myDbObj.createDb();
    // myDbObj.selectData();
    DateTime currentDate = DateTime.now();
    time = DateFormat('yyyy').format(currentDate);
    year =int.parse(time);
    print(year);
  }
  final studentNameController = TextEditingController();
  final studentEmailController = TextEditingController();
  final ageController =TextEditingController();
  final formKey = GlobalKey<FormState>();
  String male = 'Male';
  String female = 'Female';
  String gender = 'Male';

  bool date = false;

  String science= 'Science';
  String commerce='Commerce';
  String branch = 'Science';


  DateTime currentDate = DateTime.now();
  

  List<String> dropDownDayList = ['Date','1','2','3','4','5','6','7','8','9','10','11','12','13','14',
                               '15','16','17','18','19','20','21','22','23','24','25',
                               '26','27','28','29','30','31'];
  String defaultDay = 'Date';

  List<String> dropDownMonthList =['Month','January','February','March','April','May','June','July',
                                   'August','September','October','November','December'];
  String defaultMonth = 'Month';

  List<String> dropDownYearList = ['Year','1993','1994','1995','1996','1997','1998','1999','2000','2001','2002','2003','2004','2005','2006','2007','2008',
                                   '2009','2010','2011','2012','2013','2014','2015','2016','2017','2018',
                                   '2019','2020','2021','2022'];
  String defaultYear = 'Year';



  List<String> dropDownScienceSubjectList = [
    'Select Subject',
    'Physics',
    'Mathematics',
    'Chemistry',
    'Biology',
  ];

  List<String> dropDownCommerceSubjectList = [
    'Select Subject',
    'Accounts',
    'Economics',
    'Buisness Studies',
    'Informatics Practices',
  ];


   String dropDownDefault = 'Select Subject';
   String dropDownvalue = 'Select Subject';

  SqfLiteDB myDbObj=SqfLiteDB();


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
              padding: const EdgeInsets.only(top: 45.0,left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Student\nInfo',style: TextStyle(
                      color: Colors.white,
                      fontSize: 38.0,
                      fontWeight: FontWeight.w300
                   ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 150.0),
            height: 590,
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
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: studentNameController,
                            validator: (value) {
                              return (value!.isEmpty)?'Please Enter Name': null;
                            },
                            decoration: InputDecoration(
                              isCollapsed: true,
                              hintText: 'Student Name',
                              hintStyle: TextStyle(
                                  height: 2.3
                              ),
                              prefixIcon: Container(
                                height: 5,
                                width: 5,
                                child: Image(image: AssetImage('images/Student.png')),
                              ),
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

                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),

                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),

                              ),
                            ),
                          ),
                          SizedBox(height: 20.0,),

                          TextFormField(
                            controller: studentEmailController,
                            validator: (value) {
                              bool emailRegx = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(studentEmailController.text);
                              return (value!.isEmpty)?'Please Enter Email':(!emailRegx)?'Please Enter Valid Email':
                              null;
                            },
                            decoration: InputDecoration(
                              isCollapsed: true,
                              hintText: 'Student Email',
                              hintStyle: TextStyle(
                                  height: 2.3
                              ),
                              prefixIcon: Container(
                                height: 5,
                                width: 5,
                                child: Image(image: AssetImage('images/mail.png')),
                              ),
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

                             errorBorder: OutlineInputBorder(
                               borderSide: BorderSide.none,
                               borderRadius: BorderRadius.circular(20),

                             ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),

                              ),
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Gender',style: TextStyle(
                                color: Color(0xFF006A75),
                              ),
                              ),
                              Radio(
                                activeColor: Color(0xFF006A75),
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
                              ),
                              Radio(
                                activeColor: Color(0xFF006A75),
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
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Branch',style: TextStyle(
                                color: Color(0xFF006A75),
                              ),
                              ),
                              Radio(
                                activeColor: Color(0xFF006A75),
                                value: science,
                                groupValue: branch,
                                onChanged: (value) {
                                  setState(() {
                                    branch = value.toString();
                                  });
                                },
                              ),
                              Text(
                                science,
                              ),
                              Radio(
                                activeColor: Color(0xFF006A75),
                                value: commerce,
                                groupValue: branch,
                                onChanged: (value) {
                                  setState(() {
                                    branch = value.toString();
                                  });
                                },
                              ),
                              Text(
                                commerce,
                              ),
                            ],
                          ),

                          Container(

                            height: 46,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(width: 5.0,),
                                  Image(image: AssetImage('images/Subject.png')),
                                  // Icon(Icons.book,size: 20.0,color: Colors.grey,),
                                  SizedBox(width: 20.0,),

                                  SizedBox(width: 50.0,),
                                DropdownButton(
                                  icon: Icon(Icons.arrow_drop_down_rounded),
                                isExpanded: false,
                                value: branch == 'Science'?dropDownDefault:dropDownvalue,
                                itemHeight: 50,
                                onChanged: (value){
                                  setState(() {
                                    if(branch == 'Science'){
                                      dropDownDefault = value.toString();
                                    }
                                    else{
                                      dropDownvalue = value.toString();
                                    }

                                  });
                                },
                                items: branch == 'Science'? dropDownScienceSubjectList.map((e) => DropdownMenuItem(child: Text(e.toString()),
                                  value: e.toString(),
                                ),).toList():dropDownCommerceSubjectList.map((e) => DropdownMenuItem(child: Text(e.toString()),
                                  value: e.toString(),
                                ),).toList(),
                               ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('DOB',style: TextStyle(
                                color: Color(0xFF006A75),
                              ),
                              ),
                              Container(
                                height: 46,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: DropdownButton(
                                        value: defaultDay,
                                      items: dropDownDayList.map((e) => DropdownMenuItem(child: Text(e.toString()),
                                        value: e.toString(),
                                      ),).toList(),
                                      onChanged: (value){
                                          setState(() {
                                            defaultDay = value.toString();
                                          });
                                      }
                                  ),
                                ),

                              ),
                              Container(
                                height: 46,
                                width: 105,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: DropdownButton(
                                      value: defaultMonth,
                                      items: dropDownMonthList.map((e) => DropdownMenuItem(child: Text(e.toString()),
                                        value: e.toString(),
                                      ),).toList(),
                                      onChanged: (value){
                                        setState(() {
                                          defaultMonth = value.toString();
                                        });
                                      }
                                  ),
                                ),

                              ),

                              Container(
                                height: 46,
                                width: 85,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: DropdownButton(
                                      value: defaultYear,
                                      items: dropDownYearList.map((e) => DropdownMenuItem(child: Text(e.toString()),
                                        value: e.toString(),
                                      ),).toList(),
                                      onChanged: (value){
                                        setState(() {
                                          defaultYear = value.toString();
                                          ageController.text = '${year - int.parse(defaultYear)}';
                                        });
                                      }
                                  ),
                                ),

                              ),

                            ],
                          ),
                          SizedBox(height: 15.0,),
                          TextFormField(
                            controller: ageController,
                            validator: (value){
                              setState(() {
                                ageController.text;
                              });
                            },
                            decoration: InputDecoration(
                              isCollapsed: true,
                              hintText: 'Age',
                              hintStyle: TextStyle(
                                  height: 2.3
                              ),
                              prefixIcon: Container(
                                height: 5,
                                width: 5,
                                child: Image(image: AssetImage('images/Layer2.png')),
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

                          SizedBox(height: 30.0,),

                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0))
                            ),
                            child:MaterialButton(
                              onPressed: (){
                                if(formKey.currentState!.validate()){
                                    myDbObj.insertData(
                                    studentName: studentNameController.text,
                                    studentEmail: studentEmailController.text,
                                    gender: gender,
                                    branch: branch,
                                    dateOfBirth: '${defaultDay}/${defaultMonth}/${defaultYear}',
                                    subject:branch == 'Science'?dropDownDefault:dropDownvalue,
                                      age: ageController.text,
                                  );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Registered successfully!!')),
                                    );


                                    Timer(Duration(seconds: 3), () {
                                      Navigator.pushNamed(context, 'DisplayList');
                                    });
                                }
                                myDbObj.selectData();
                                clearInputFields();
                              },

                              color: Color(0xFF006A75),
                              child: Text('Register',style: TextStyle(
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
            top:10.0,
            left: 190.0,
            child: Container(
              height: 180,
              width: 180,
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
