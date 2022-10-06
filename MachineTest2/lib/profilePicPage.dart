
import 'package:flutter/material.dart';

class profilePicSelector extends StatefulWidget {
  const profilePicSelector({Key? key}) : super(key: key);

  @override
  State<profilePicSelector> createState() => _profilePicSelectorState();
}

class _profilePicSelectorState extends State<profilePicSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 100,top: 100.0),
        child: GestureDetector(
          onTap: (){
            showModalBottomSheet(
              
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                ),
                builder: (context)=>Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                    color:Color(0xFF006A75),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){
                        print('Camera');
                      }, icon:Icon(Icons.camera_alt,size: 70,color: Colors.white,)),
                      IconButton(onPressed: (){
                        print('Gallery');
                      }, icon: Icon(Icons.photo,size: 70,color:Colors.white,))
                    ],
                  ),
                ),
            );
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.pink,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [
                    Colors.pink,
                    Color(0xFF006A75),
                  ]
              )
            ),
            child: Icon(Icons.camera_alt,size: 80.0,color: Colors.white,),
          ),
        )
      ),
    );
  }
}
