import 'package:flutter/material.dart';
import 'package:projec/Screens/registration/space.dart';
import 'package:projec/Screens/restaurantApp/restaurant_widget.dart';
import 'package:projec/Screens/restaurantApp/restaurantdetail.dart';
import 'package:projec/utils/colors.dart';

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({Key? key}) : super(key: key);

  Widget options({
    IconData icon = Icons.grid_view_sharp,
    String label = 'All',
  }) =>
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 90,
              decoration: BoxDecoration(
                color: orange,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: blue900,
                      spreadRadius: 1.0,
                      blurRadius: 2.0,
                      blurStyle: BlurStyle.outer),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon),
                  horizontalSpace(5.0),
                  Text(label),
                ],
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orange,
        leading: Icon(
          Icons.fastfood,
          color: white,
        ),
        title: const Text('FoodAdda'),
        actions: [
          const Icon(Icons.search),
          const Icon(Icons.more_vert),
          horizontalSpace(20.0),
        ],
        bottom: PreferredSize(
          preferredSize: Size(0, 50),
          child: Container(
            height: 58.0,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    options(),
                    options(icon: Icons.location_on, label: 'Nearby'),
                    options(icon: Icons.fastfood, label: 'Burger'),
                    options(icon: Icons.local_pizza, label: 'Pizza'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_rounded,
                            size: 28.0,
                          ),
                          Text(
                            'Nearby Restaurant',
                            style: TextStyle(
                                fontSize: 21.0,
                                fontWeight: FontWeight.bold,
                                color: textlocation),
                          )
                        ],
                      ),
                      verticalSpace(5.0),
                      Text(
                        '+ 30restaurants found near you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(10.0),
              Container(
                height: 500,
                width: 400,
                padding: EdgeInsets.only(top: 5.0),
                child: ListView.separated(
                  itemCount: restaurantData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context)=>
                                RestaurantDetails(
                                  imagePath: restaurantData[index]['image'],
                                  title:restaurantData[index]['title'],
                                  foodType: restaurantData[index]['foodType'],
                                  rating: restaurantData[index]['rating'],
                                  hotel: restaurantData[index]['hotel'],
                                  favIcon: restaurantData[index]['favIcon'],
                                )
                            ));
                      },
                        leading:  CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage(restaurantData[index]['image']),
                        ),
                        title:  Text(
                          restaurantData[index]['title'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              restaurantData[index]['foodType'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: grey),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 17.0,
                                  color: starColor,
                                ),
                                Text(
                                  restaurantData[index]['rating'],
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 17.0,
                                  color: starColor,
                                ),
                                Text(
                                  restaurantData[index]['hotel'],
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.delivery_dining,
                                  size: 17.0,
                                  color: starColor,
                                ),
                                Text(
                                  'Free Delivery',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        trailing: CircleAvatar(
                          radius: 12.0,
                          backgroundColor: favoriteColor,
                          child:Icon(restaurantData[index]['favIcon'], size: 13.0, color: white),
                        ));
                  },
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 1,
                    height: 50,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
