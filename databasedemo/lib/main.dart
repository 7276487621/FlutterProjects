
///Firebaserealtime database

/*
import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'firebase_realtime_database.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  initState() {
    super.initState();
    FireBaseRealTime.selectValue();
    Timer(Duration(seconds: 3), () {
      setState(() {});
    });
  }

  String selectedKey = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20.0),
            MaterialButton(
              onPressed: () async {

                await GoogleSignIn().signIn().then((value) {
                  print(value);
                });

                await GoogleSignIn().signOut();
              },
              color: Colors.yellow,
              child: Text('Google Sign In'),
            ),
            SizedBox(height: 20.0),
            MaterialButton(
              onPressed: () async {

                await FacebookAuth.getInstance().login().then((value) {
                  print(value);
                });

                await GoogleSignIn().signOut();
              },
              color: Colors.yellow,
              child: Text('Facebook Sign In'),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter name',
              ),
              controller: nameController,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter age',
              ),
              controller: ageController,
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                FireBaseRealTime.insertValue(context,
                    name: nameController.text, age: ageController.text);
              },
              child: const Text('Submit'),
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                FireBaseRealTime.updateValue(context,
                    key: selectedKey,
                    name: nameController.text,
                    age: ageController.text);
              },
              child: const Text('Update'),
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                FireBaseRealTime.deleteValue(
                  context,
                  key: selectedKey,
                );
              },
              child: const Text('Delete'),
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: FireBaseRealTime.data.length,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () {
                          nameController.text =
                              FireBaseRealTime.data[index]['name'];
                          ageController.text =
                              FireBaseRealTime.data[index]['age'];
                          selectedKey = FireBaseRealTime.data[index]['key'];
                          setState(() {});
                        },
                        title: Text(FireBaseRealTime.data[index]['name']),
                        trailing: Text(FireBaseRealTime.data[index]['age']),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
*/


import 'dart:async';

import 'package:databasedemo/display_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firestorecloud_database.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  initState() {
    super.initState();
    FirebaseCloudStore.selectValue();
    Timer(Duration(seconds: 3), () {
      setState(() {});
    });
  }

  String selectedKey = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(controller: nameController),
            TextField(controller: ageController),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                FirebaseCloudStore.insertValue(
                  name: nameController.text,
                  age: ageController.text,
                );
              },
              child: const Text('Submit'),
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                FirebaseCloudStore.updateValue(
                  key: FirebaseCloudStore.selectedItem,
                  name: nameController.text,
                  age: ageController.text,
                );
              },
              child: const Text('Update'),
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                FirebaseCloudStore.deleteValue(
                  key: FirebaseCloudStore.selectedItem,
                );
              },
              child: const Text('Delete'),
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayData(FirebaseCloudStore.data),
                  ),
                );
              },
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
