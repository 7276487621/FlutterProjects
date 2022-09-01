
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projec/Screens/registration/space.dart';



class Lecture3 extends StatefulWidget {
  const Lecture3({Key? key}) : super(key: key);

  @override
  State<Lecture3> createState() => _Lecture3State();
}

class _Lecture3State extends State<Lecture3> {

String dropDownDefault = 'Item1';

List<String> dropDownList = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
  'Item5',
  'Item6',
  'Item7',
  'Item8',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lecture3'),
        centerTitle: true,
        actions: [
          ///PopupMenu Button

          PopupMenuButton(itemBuilder: (context)=>[
            PopupMenuItem(
                child: const Text('Shared'),
              onTap: (){
                  print('Shared');
               },
            ),


            PopupMenuItem(
              child: const Text('Setting'),
              onTap: (){
                print('Setting');
              },
            ),


            PopupMenuItem(
              child: const Text('Logout'),
              onTap: (){
                print('Logout');
              },
            ),
          ],
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ///DROPDOWN BUTTON
            DropdownButton(
              isExpanded: true,
               value: dropDownDefault,
                itemHeight: 50,
                onChanged: (value){
                  setState(() {
                    dropDownDefault = value.toString();
                  });
                },
              items: dropDownList.map((e) => DropdownMenuItem(child: Text(e.toString()),
              value: e.toString(),
              ),).toList(),
            //     items: const[
            //   DropdownMenuItem(
            //   value: 'Item 1',
            //     child: Text('Item 1'),
            //   ),
            //   DropdownMenuItem(
            //     value: 'Item 2',
            //     child: Text('Item 2'),
            // ),
            //   DropdownMenuItem(
            //     value: 'Item 3',
            //     child: Text('Item 3'),
            //   ),
            //   DropdownMenuItem(
            //     value: 'Item 4',
            //     child: Text('Item 4'),
            //   ),
            //   DropdownMenuItem(
            //     value: 'Item 5',
            //     child: Text('Item 5'),
            //   ),
            // ],
            ),
            verticalSpace(20.0),
            ///SnackBar (Toaster message)
            MaterialButton(onPressed: (){
              ///Snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                    content: const Text('Invalid Credentials!!',style: TextStyle(
                      color: Colors.black,
                    ),),
                    duration:const  Duration(milliseconds: 1000),
                    margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  )
              );
            },
              color: Colors.pink,
              child: const Text('SnackBar'),
            ),
            verticalSpace(20.0),

            ///Simple DialogBox
            MaterialButton(onPressed: (){
              ///Simple DialogBox
              showDialog(
                  context: context,
                  builder: (context)=>SimpleDialog(
                    title: const Text('Title'),
                    children: [
                     const  Text('data'),
                      const Icon(Icons.add),
                      MaterialButton(onPressed: (){
                        Navigator.pop(context);
                      },

                      color: Colors.green,
                        child: const Text('data'),
                      )
                    ],
                  ),
              );
            },

              color: Colors.yellow,
              child: const Text('Simple Dialog'),
            ),

            verticalSpace(20.0),
            //AlertDialogBox
            MaterialButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (context)=>AlertDialog(
                    title: const Text('AlertDialog'),
                    content: const Text(
                      'Hello Hakunama Tata!!',
                    ),
                    actions: [
                      TextButton(onPressed: (){}, child: Text('Cancle'),
                      ),
                      TextButton(onPressed: (){
                        Navigator.pop(context);

                      },
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(Colors.blue),
                        ), child: const Text('ok',style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      ),
                    ],

                  ),
              );
            },

              color: Colors.deepPurple,
              child: const Text('Alert Dialog'),
            ),
            verticalSpace(20.0),

            MaterialButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (context)=> CupertinoAlertDialog(
                    title: const Text('Cupertino Dialog Box'),
                    content: const Text('Hello This is Saachin please Approve this merge request!!'),
                    actions: [
                      TextButton(onPressed: (){}, child: Text('Cancel')),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: const Text('Ok')),
                    ],
                  )
              );
            },

              color: Colors.purple,
              child: const Text('CupertinoAlertDialog'),
            ),
            verticalSpace(20.0),

            ///Bottom Sheet
            MaterialButton(onPressed: (){
              showModalBottomSheet(
                context: context,
                // barrierColor: Colors.yellow,
                builder: (context)=>Container(
                  color: Colors.purple.shade50,
                  height: 200,
                  child: Column(
                    children: const[
                      Text('Sachin'),
                      Text('Rohan'),
                      Text('Madhav'),
                      Text('Madhuri'),
                      Text('Tejashree'),
                      Text('Sanket'),
                      Text('Pranav'),
                      Text('Pravin'),
                      Text('Anita'),
                    ],
                  ),
                )
              );
            },

              color: Colors.tealAccent,
              child: const Text('BottomSheet'),
            )
          ],
        ),
      ),
    );
  }
}
