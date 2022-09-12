import 'package:flutter/material.dart';
import 'package:foodyapp/space.dart';
import 'package:foodyapp/utils/colors.dart';
import 'package:foodyapp/utils/screenUtils.dart';

import '../utils/postData.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget foodCategories({String image = '', String name = ''}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'CategoryPage',arguments: {
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

  Widget drawerBox({IconData icon = Icons.person,String section = 'Profile'})=>   ListTile(
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
                      )
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                    accountName: Text('Sachin Gardi'),
                    accountEmail: Text('gardisachin0@gmail.com'),
                  ),
                drawerBox(),
                drawerBox(
                    icon: Icons.add_shopping_cart,
                    section: 'Cart'
                ),
                drawerBox(icon: Icons.shopping_bag,section:'Order'),
                drawerBox(
                    icon: Icons.info,
                    section: 'About'
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                ListTile(leading:
                Text('Contacts Us',style: TextStyle(
                    fontSize: 15.0
                ),),),
                drawerBox(
                    icon: Icons.email,
                    section: 'Email us'
                ),
                drawerBox(
                    icon: Icons.logout,
                    section: 'Log Out'
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

          actions: const [
            Padding(
              padding: EdgeInsets.all(9.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpg'),
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
              child:  ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: postFoods.length,
                itemBuilder: (context, index) => foodCategories(
                    image: postFoods[index].imagePath,
                    name: postFoods[index].imageName),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: GestureDetector(
                  child: GridView.builder(
                    shrinkWrap: false,
                      primary: false,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0,
                      ),
                      itemCount: postFoods.length,
                      itemBuilder: (context,index)=> foodItemContainer(
                          image: postFoods[index].imagePath,
                          foodName: postFoods[index].imageName,
                          price:postFoods[index].price
                      ),
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
