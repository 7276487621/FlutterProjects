import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseCloudStore {
  static String selectedItem = "";
  static CollectionReference users =
  FirebaseFirestore.instance.collection('users');

  /// INSERT
  static insertValue({
    String name = '',
    String age = '',
  }) {
    users.add({
      'name': name,
      'age': age,
    });
  }

  /// Update
  static updateValue({
    String key = '',
    String name = '',
    String age = '',
  }) {
    users.doc(key).update({
      'name': name,
      'age': age,
    });
  }

  /// Delete
  static deleteValue({String key = ''}) {
    users.doc(key).delete();
  }

  /// SELECT
  static List<Map> data = [];

  static selectValue() {
    users.get().then((value) {
      data.clear();
      value.docs.forEach((element) {
        Map temp = element.data() as Map;
        data.add({
          "name": temp['name'],
          "age": temp['age'],
          "key": element.id,
        });
      });
    });
  }
}
