
import 'dart:async';

import 'package:flutter/material.dart';

import '../firebase_realtime_database.dart';
import '../space.dart';
import '../utils/colors.dart';
import '../utils/postData.dart';

class RestaurantMenuePage extends StatefulWidget {
  const RestaurantMenuePage({Key? key}) : super(key: key);

  @override
  State<RestaurantMenuePage> createState() => _RestaurantMenuePageState();
}

class _RestaurantMenuePageState extends State<RestaurantMenuePage> {
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
  String foodType = '';
  Map data = {};
  List categories = FireBaseRealTime.burgerCategoryList;
  Widget restaurantItemContainer({
    String image = '',
    int price = 0,
    String foodName = '',
  })=>GestureDetector(
    onTap: (){
     Navigator.pushNamed(context, 'DetailPage',arguments: {
       'imagePath':image,
       'price':price,
       'foodName':foodName,
     });
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
                  verticalSpace(20.0),
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
    foodType = data['FoodType'];
    categories = foodType == 'Burger'?FireBaseRealTime.burgerCategoryList:foodType == 'Pizza'?FireBaseRealTime.pizzaCategoryList:
    foodType =='Rolls'?FireBaseRealTime.rollsCategoryList:foodType == 'Sandwitch'?FireBaseRealTime.sandwitchCategoryList:foodType == 'Thali'?FireBaseRealTime.thaliCategoryList:foodType =='Mexican'?FireBaseRealTime.mexicanCategoryList:FireBaseRealTime.burgerCategoryList;
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
            itemBuilder: (context,index)=> restaurantItemContainer(
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
