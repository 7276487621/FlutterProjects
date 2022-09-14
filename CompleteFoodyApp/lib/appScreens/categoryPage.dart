
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodyapp/space.dart';
import 'package:foodyapp/utils/postData.dart';

import '../firebase_realtime_database.dart';
import '../utils/colors.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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

  _CategoryPageState();

  String name='';
  Map data = {};
  List categories = FireBaseRealTime.burgerCategoryList;


  Widget burgerItemContainer({
    String image = '',
    int price = 0,
    String foodName = '',
    String foodType = '',
    String restorantName =''
  })=>GestureDetector(
    onTap: (){
    Navigator.pushNamed(context, 'RestaurantMenuePage',arguments: {
      'FoodType':foodType,
    });
    },
    child: Container(
      height: 130,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
         Container(
           height: 250,
           width: double.infinity,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage(image),
               fit: BoxFit.cover,
             ),
             borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
           ),
         ),
          // CircleAvatar(
          //   radius: 55,
          //   backgroundImage: AssetImage(image),
          // ),


              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '\$ $price',
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),

                      Text(foodType,style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  )

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
    name = data['Name'];
    categories = name == 'Burger'?FireBaseRealTime.burgerCategoryList:name == 'Pizza'?FireBaseRealTime.pizzaCategoryList:
        name =='Rolls'?FireBaseRealTime.rollsCategoryList:name == 'Sandwitch'?FireBaseRealTime.sandwitchCategoryList:name == 'Thali'?FireBaseRealTime.thaliCategoryList:name =='Mexican'?FireBaseRealTime.mexicanCategoryList:FireBaseRealTime.burgerCategoryList;
    print(name);
    ///we can use ternary operator instead of if else.
    // if(name == 'Burger'){
    //   categories = burgerCategory;
    //   print(categories);
    // }
    // else if(name == 'Pizza'){
    //   categories = pizzaCategory;
    //   print(categories);
    // }
    // else if(name == 'Rolls'){
    // categories = rollsCategory;
    // }
    // else if(name == 'Sandwitch'){
    //   categories = sandwitchCategory;
    // }
    // else if(name == 'Thali'){
    //   categories = thaliCategory;
    // }
    // else{
    //   categories = mexicanCategory;
    // }
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
                crossAxisCount: 1,
                childAspectRatio: 1.1,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
              ),

              itemCount: categories.length,
              itemBuilder: (context,index)=> burgerItemContainer(
                  foodType: categories[index]['foodType'],
                  image: categories[index]['imagePath'],
                  foodName: categories[index]['imageName'],
                  price:categories[index]['price'],
                  restorantName:categories[index]['restaurantName'],
              ),
            ),
          ),

      ),
    );
  }
}
