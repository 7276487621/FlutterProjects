
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
class SqfLiteDB{

  Database? db;
  String path = '';

  createDb() async {
    String demoPath = await getDatabasesPath();
    path = join(demoPath,'studentInfo.db');
    openDb();
  }

  openDb() async {
    db = await openDatabase(
        path,
        version:3,
        onCreate: (Database db, int version) async {
          await db.execute('CREATE TABLE studentInfo(id INTEGER PRIMARY KEY,studentName TEXT,studentEmail TEXT,gender TEXT, branch TEXT,subject Text,dateOfBirth Text, age Text, password Text, mobile Text, image Text )');
        }
    );
  }

  insertData({String studentName='',String studentEmail='',String gender='', String branch='',String subject='',String dateOfBirth='', String age='', String password='', String mobile='',String image ='' }){
    db!.insert('studentInfo', {
      'studentName':studentName,
      'studentEmail':studentEmail,
      'gender':gender,
      'branch':branch,
      'subject':subject,
      'dateOfBirth':dateOfBirth,
      'age':age,
      'password':password,
      'mobile':mobile,
      'image':image,
    });
  }

  static List<Map> data= [];
  selectData() async{
    await db!.rawQuery('SELECT * FROM studentInfo').then((value){
      data.clear();
      value.forEach((element) {
        Map temp = element as Map;
        data.add({
          "studentName": temp['studentName'],
          "studentEmail": temp['studentEmail'],
          "gender":temp['gender'],
          "branch":temp['branch'],
          "subject":temp['subject'],
          "dateOfBirth":temp['dateOfBirth'],
          "age":temp['age'],
          "password":temp['password'],
          "mobile":temp['mobile'],
          "image":temp['image'],
        });
      });
      print(data);

    });
  }



}