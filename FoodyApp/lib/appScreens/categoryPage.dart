
import 'package:flutter/material.dart';
import 'package:foodyapp/utils/postData.dart';

import '../utils/colors.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  _CategoryPageState();

  String name='';
  Map data = {};
 List categories = burgerCategory;
  bool burgerCat = false;
  bool pizzaCat = false;

  Widget burgerItemContainer({
    String image = '',
    int price = 0,
    String foodName = '',
  })=>Container(
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
          leading: Text(foodName,style: const TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
          ),
          trailing: Text(
            '\$ $price',
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.black,
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
  );
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    name = data['Name'];

    categories = name == 'Burger'?burgerCategory:name == 'Pizza'?pizzaCategory:
        name =='Rolls'?rollsCategory:name == 'Sandwitch'?sandwitchCategory:name == 'Thali'?thaliCategory:mexicanCategory;
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
    return Scaffold(
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
              childAspectRatio: 0.8,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),

            itemCount: categories.length,
            itemBuilder: (context,index)=> burgerItemContainer(
                image: categories[index].imagePath,
                foodName: categories[index].imageName,
                price:categories[index].price,
            ),
          ),
        ),

    );
  }
}
