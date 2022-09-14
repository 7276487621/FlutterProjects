

import 'dart:async';
import 'dart:io';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:foodyapp/appScreens/cartPage.dart';
import 'package:foodyapp/space.dart';
import 'package:foodyapp/utils/colors.dart';
import 'package:foodyapp/utils/screenUtils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../firebase_realtime_database.dart';
import '../utils/postData.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  initState() {
    super.initState();
 FireBaseRealTime.selectCategoryValue();
    FireBaseRealTime.selectValue();
    Timer(Duration(seconds: 3), () {
      setState(() {});
    });
  }

  final ImagePicker _picker = ImagePicker();
 static File? file;

  getImage()async{
    final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
    file = File(photo!.path);
    setState(() {});
  }
  Widget foodCategories({String image = '', String name = ''}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'CategoryPage', arguments: {
                  'Name': name,
                });
                print(name);
              },
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            verticalSpace(10.0),
            Text(
              name,
              style: TextStyle(fontSize: 20, color: Colors.black),
            )
          ],
        ),
      );

  Widget foodItemContainer({
    String image = '',
    int price = 0,
    String foodName = '',
    String restorantName = '',
  }) =>
      GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, 'Restaurants',arguments: {
            'FoodName':foodName,
          });
          print(foodName);
        },
        child: Container(
          height: 260,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(image),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restorantName,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      verticalSpace(5.0),
                      Text(
                        foodName,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    '\$ $price',
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget drawerBox(
          {IconData icon = Icons.person, String section = 'Profile'}) =>
      ListTile(
        leading: Icon(icon),
        title: Text(section),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      // color: deeporange,

                      gradient: LinearGradient(
                    colors: [
                      deeporange,
                      Colors.orangeAccent,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
                  currentAccountPicture: GestureDetector(
                    onTap: (){
                      getImage();

                    },
                    child: CircleAvatar(
                      backgroundImage: file == null? const AssetImage('images/profile.jpg'):FileImage(file!) as ImageProvider,
                    ),
                  ),
                  accountName: Text('Sachin'),
                  accountEmail: Text('gardisachin0@gmail.com'),
                ),
                drawerBox(),
                drawerBox(icon: Icons.add_shopping_cart, section: 'Cart'),
                drawerBox(icon: Icons.shopping_bag, section: 'Order'),
                drawerBox(icon: Icons.info, section: 'About'),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                ListTile(
                  leading: Text(
                    'Contacts Us',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                drawerBox(icon: Icons.email, section: 'Email us'),
                GestureDetector(
                  onTap: ()  async{
                    SharedPreferences pre = await SharedPreferences.getInstance();
                    pre.clear();
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: drawerBox(
                      icon: Icons.logout, section: 'Log Out'
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'FoodyApp',
            style: TextStyle(
              fontFamily: 'Billabong',
              fontSize: 30.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: deeporange,
          elevation: 0.0,
          actions:  [
            Padding(
              padding: EdgeInsets.all(9.0),
              child: CircleAvatar(
                backgroundImage:file == null?AssetImage('images/profile.jpg'):FileImage(file!) as ImageProvider
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                cursorColor: deeporange,
                decoration: InputDecoration(
                    hintText: 'Search Meal',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade400,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Container(
              height: 130,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: FireBaseRealTime.categoryList.length,
                itemBuilder: (context, index) => foodCategories(
                    image: FireBaseRealTime.categoryList[index]['imagePath'],
                    name: FireBaseRealTime.categoryList[index]['imageName']),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: GridView.builder(
                  shrinkWrap: false,
                  primary: false,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                  ),
                  itemCount: FireBaseRealTime.categoryList.length,
                  itemBuilder: (context, index) => foodItemContainer(
                    image: FireBaseRealTime.categoryList[index]['imagePath'],
                    foodName: FireBaseRealTime.categoryList[index]['imageName'],
                    price: FireBaseRealTime.categoryList[index]['price'],
                    restorantName: FireBaseRealTime.categoryList[index]['restaurantName'],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
