
import 'package:flutter/material.dart';
import 'package:machinetest2/sqflitedb.dart';

class DisplayListClass extends StatefulWidget {

  List<Map> data;
  DisplayListClass(this.data,{Key? key}) : super(key: key);

  @override
  State<DisplayListClass> createState() => _DisplayListState();
}

class _DisplayListState extends State<DisplayListClass> {

  SqfLiteDB myDbObj=SqfLiteDB();
  @override
  void initState() {
    super.initState();
    myDbObj.selectData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
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
                leading: Image(image: AssetImage('images/ListUser.png'),height: 35),
                title: Text(widget.data[index]['studentName']),
                trailing: Text(widget.data[index]['branch'],style: TextStyle(
                  color: Color(0xFF006A75),
                ),
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
