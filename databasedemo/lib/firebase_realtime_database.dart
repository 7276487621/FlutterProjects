

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FireBaseRealTime{
  static DatabaseReference db = FirebaseDatabase.instance.ref('Users');
  ///Insert into database
  static insertValue(BuildContext context,{String name = '', String age=''}){
    String key = db.push().key!;
    db.child(key).set({
      'name':name,
      'age':age,
      'key':key,
    }).then((value){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Data successfully inserted!!'),),
      );
    });
  }
  ///Select from database
  static List<Map> data = [];
  static selectValue(){

    db.once().then((value){
      Map map = value.snapshot.value as Map;
      map.forEach((k,v){
          data.add(v);
      });

    });
  }
  /// Update data
  static updateValue(BuildContext context,{String name = '', String age='',String key =''}){
    db.child(key).update({
      'name':name,
      'age':age,
    }).then((value){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Data successfully updated!!'),),
      );
    });
  }
  ///Delete
  static deleteValue(BuildContext context,{String key =''}){
    db.child(key).remove().then((value){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Data successfully deleted!!'),),
      );
    });
  }


}

