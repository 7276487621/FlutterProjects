import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:foodyapp/utils/postData.dart';

class FireBaseRealTime {
  static DatabaseReference db = FirebaseDatabase.instance.ref('Users');
  static DatabaseReference postFoodDb = FirebaseDatabase.instance.ref('PostFood');
  static DatabaseReference burgersDb = FirebaseDatabase.instance.ref('Burgers');
  static DatabaseReference pizzasDb = FirebaseDatabase.instance.ref('Pizzas');
  static DatabaseReference rollsDb = FirebaseDatabase.instance.ref('Rolls');
  static DatabaseReference sandwitchDb = FirebaseDatabase.instance.ref('Sandwitch');
  static DatabaseReference thaliDb = FirebaseDatabase.instance.ref('Thalis');
  static DatabaseReference mexicanDb = FirebaseDatabase.instance.ref('Mexicans');
 // static InsertStaticValue() {
 //   for(int i=0;i<mexicanCategory.length;i++){
 //     String key = mexican.push().key!;
 //     mexican.child(key).set(MexicanCategory.toMap(mexicanCategory[i]));
 //   }
 // }
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


  static List<Map> categoryList = [];
  static selectCategoryValue() {
    postFoodDb.once().then((value) {
      Map map = value.snapshot.value as Map;
      map.forEach((k, v) {
        categoryList.add(v);
      });

      print('****${categoryList}');
    });
  }

  static List<Map> burgerCategoryList = [];
  static selectBurgerCategoryValue() {
    burgersDb.once().then((value) {
      Map map = value.snapshot.value as Map;
      map.forEach((k, v) {
        burgerCategoryList.add(v);
      });

      print('****${burgerCategoryList}');
    });
  }

  static List<Map> pizzaCategoryList = [];
  static selectPizzaCategoryValue() {
    pizzasDb.once().then((value) {
      Map map = value.snapshot.value as Map;
      map.forEach((k, v) {
        pizzaCategoryList.add(v);
      });

      print('****${pizzaCategoryList}');
    });
  }

  static List<Map> rollsCategoryList = [];
  static selectRollsCategoryValue() {
    rollsDb.once().then((value) {
      Map map = value.snapshot.value as Map;
      map.forEach((k, v) {
        rollsCategoryList.add(v);
      });

      print('****${rollsCategoryList}');
    });
  }

  static List<Map> sandwitchCategoryList = [];
  static selectSandwitchCategoryValue() {
    sandwitchDb.once().then((value) {
      Map map = value.snapshot.value as Map;
      map.forEach((k, v) {
        sandwitchCategoryList.add(v);
      });

      print('****${sandwitchCategoryList}');
    });
  }

  static List<Map> thaliCategoryList = [];
  static selectThaliCategoryValue() {
    thaliDb.once().then((value) {
      Map map = value.snapshot.value as Map;
      map.forEach((k, v) {
        thaliCategoryList.add(v);
      });

      print('****${thaliCategoryList}');
    });
  }


  static List<Map> mexicanCategoryList = [];
  static selectMexicanCategoryValue() {
    mexicanDb.once().then((value) {
      Map map = value.snapshot.value as Map;
      map.forEach((k, v) {
        mexicanCategoryList.add(v);
      });

      print('****${mexicanCategoryList}');
    });
  }

}
