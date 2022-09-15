import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SqfLiteDB{

  Database? db;
  String path = '';

  createDb() async {
    String demoPath = await getDatabasesPath();
    path = join(demoPath,'demo.db');
    openDb();
  }

  openDb() async {
   db = await openDatabase(
     path,
     version:1,
     onCreate: (Database db, int version) async {
       await db.execute('CREATE TABLE users(id INTEGER PRIMARY KEY,email TEXT, age TEXT)');

     }
   );
  }

  insertData({String email='', String age=''}){
    db!.insert('users', {
      'email':email,
      'age':age,
    });
  }

  updateData({String email='', String age='',String id=''}){
    db!.update('users', {
      'email':email,
      'age':age,
    },
    where: 'id=$id',
    );
  }

  deleteData({String id=''}){
    db!.delete(
      'users',
      where: 'id=$id',
    );
  }

  selectData() async{
     await db!.rawQuery('SELECT * FROM users').then((value){
      print('********$value');
    });
  }


}