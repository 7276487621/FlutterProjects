import 'package:flutter/material.dart';
import 'package:projec/Screens/registration/space.dart';
import 'package:projec/Screens/restaurantApp/restaurant_widget.dart';
import '../../utils/colors.dart';

class RestaurantDetails extends StatelessWidget {
  String imagePath = '';
  String title = '';
  String foodType = '';
  String rating = '';
  String hotel = '';
  IconData favIcon = Icons.favorite;


  RestaurantDetails({
    this.imagePath = '',
    this.title = '',
    this.foodType = '',
    this.rating = '',
    this.hotel = '',
    this.favIcon = Icons.favorite,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orange,
        leading: Container(
          height: 50.0,
          child: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back)),
        ),

        title: Row(
          children: [
            Icon(Icons.fastfood),
            horizontalSpace(30.0),
            Text('Restaurant Detail')
          ],
        ),
        // centerTitle: true,
      ),
      body:
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10.0),
            child: Container(
              height: 300,
              width: 370,
              decoration: BoxDecoration(
                  // color: blue900,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: grey,
                      spreadRadius: 4.0,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 2.0,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading:  CircleAvatar(
                      maxRadius: 35.0,
                      backgroundImage: AssetImage(imagePath),
                    ),
                    title: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodType,
                          style:
                              TextStyle(fontWeight: FontWeight.bold, color: grey,fontSize: 20.0),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 19.0,
                              color: starColor,
                            ),
                            Text(
                              rating,
                              style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 19.0,
                              color: starColor,
                            ),
                            Text(
                              hotel,
                              style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.delivery_dining,
                              size: 19.0,
                              color: starColor,
                            ),
                            Text(
                              'Free Delivery',
                              style: TextStyle(
                                fontSize: 17.0,
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
                      child: Icon(favIcon, size: 13.0, color: white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

    );
  }
}
