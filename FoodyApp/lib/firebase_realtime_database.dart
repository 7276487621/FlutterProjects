import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FireBaseRealTime {
  static DatabaseReference db = FirebaseDatabase.instance.ref('Users');

  ///Insert into database
  static InsertValue(
    BuildContext context, {
    String name = '',
    String email = '',
    String password = '',
    String mobile = '',
  }) {
    String key = db.push().key!;
    db.child(key).set({
      'name': name,
      'email': email,
      'password': password,
      'mobile': mobile,
    }).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registered successfully!!!'),
        ),
      );
    });
  }

  static List<Map> data = [];

  static selectValue() {
    db.once().then((value) {
      Map map = value.snapshot.value as Map;
      map.forEach((k, v) {
        data.add(v);
      });

      print('****${data}');
    });
  }
}
