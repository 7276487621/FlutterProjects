
import 'package:flutter/material.dart';
import 'package:machinetest2/sqflitedb.dart';
import 'dart:typed_data';
class DisplayListClass extends StatefulWidget {

  List<Map> data;
  DisplayListClass(this.data,{Key? key}) : super(key: key);

  @override
  State<DisplayListClass> createState() => _DisplayListState();
}

class _DisplayListState extends State<DisplayListClass> {

  String DecoImage='';
  Uint8List? _bytesImage;


  SqfLiteDB myDbObj=SqfLiteDB();
  // @override
  // void initState() {
  //   super.initState();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: Colors.grey.shade300,
          child:  IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 20,),
          ),
        ),
        title: Text('List',style: TextStyle(
          fontSize: 25.0,
          color: Colors.grey.shade800,
        ),),
      ),

          body:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.separated(
          itemCount: widget.data.length,
              itemBuilder: (context,index)=>ListTile(
                leading: Image(image: AssetImage('images/ListUser.png',),),

                title: Row(
                  children: [
                    Text('Name: ',style: TextStyle(
                      fontSize: 20.0,
                    ),),
                    Text(widget.data[index]['studentName'],style: TextStyle(
                      color: Color(0xFF006A75),
                      fontSize: 20.0,
                    ),),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        Text('Mob: ',style: TextStyle(
                          fontSize: 15.0,
                        ),),
                        Text(widget.data[index]['mobile'],style: TextStyle(
                          color: Color(0xFF006A75),
                          fontSize: 15.0
                        ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Branch: ',style: TextStyle(
                          fontSize: 15.0,
                        ),),
                        Text(widget.data[index]['branch'],style: TextStyle(
                          color: Color(0xFF006A75),
                          fontSize: 15.0
                        ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('DOB: ',style: TextStyle(
                          fontSize: 15.0,
                        ),
                        ),
                        Text(widget.data[index]['dateOfBirth'],style: TextStyle(
                            color: Color(0xFF006A75),
                            fontSize: 15.0
                        ),
                        ),

                      ],

                    )
                  ],
                ),
              ),
              separatorBuilder: (context, index)=>
               Divider(
                thickness: 1,
                height: 2,
                color: Colors.blueGrey.shade300,
              ),
            )
            /*Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 3.0,
                    spreadRadius:1,
                  )
                ],
              ),

              // ListView.builder(
              //     itemBuilder: itemBuilder
              //   image     ),
            ),*/
          ),
    );
  }
}
