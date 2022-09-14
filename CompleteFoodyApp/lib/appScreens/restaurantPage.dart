

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodyapp/utils/colors.dart';

import '../firebase_realtime_database.dart';
import '../space.dart';
import '../utils/postData.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  initState() {
    super.initState();
    FireBaseRealTime.selectMexicanCategoryValue();
    FireBaseRealTime.selectBurgerCategoryValue();
    FireBaseRealTime.selectPizzaCategoryValue();
    FireBaseRealTime.selectSandwitchCategoryValue();
    FireBaseRealTime.selectRollsCategoryValue();
    FireBaseRealTime.selectThaliCategoryValue();
    // FireBaseRealTime.selectValue();
    Timer(Duration(seconds: 3), () {
      setState(() {});
    });
  }
  String foodName='';
  Map data = {};
  List categories = FireBaseRealTime.burgerCategoryList;

  Widget burgerItemContainer({

    String image = '',
    int price = 0,
    String foodName = '',
    restaurantName='',
  })=>GestureDetector(
    onTap: (){
     Navigator.pushNamed(context, 'DetailPage',arguments: {
       'imagePath':image,
       'price':price,
       'foodName':foodName,
     });
     print(image);
     print(price);
     print(foodName);
    },
    child: Container(
      height: 230,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
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
                    restaurantName,
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
              padding: const EdgeInsets.only(top: 30.0),
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
              children: const[
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
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    foodName = data['FoodName'];
    categories = foodName == 'Burger'?FireBaseRealTime.burgerCategoryList:foodName == 'Pizza'?FireBaseRealTime.pizzaCategoryList:
    foodName =='Rolls'?FireBaseRealTime.rollsCategoryList:foodName == 'Sandwitch'?FireBaseRealTime.sandwitchCategoryList:foodName == 'Thali'?FireBaseRealTime.thaliCategoryList:foodName =='Mexican'?FireBaseRealTime.mexicanCategoryList:FireBaseRealTime.burgerCategoryList;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
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

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
          child: GridView.builder(
            shrinkWrap: false,
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),

            itemCount: categories.length,
            itemBuilder: (context,index)=> burgerItemContainer(
              image: categories[index]['imagePath'],
              foodName: categories[index]['imageName'],
              price:categories[index]['price'],
            ),
          ),
        ),
      ),
    );
  }
}
