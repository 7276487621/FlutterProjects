
import 'package:flutter/material.dart';

Widget labels(String label)=>Text(
  label.toUpperCase(),
  style: const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
);


List<Map> restaurantData =[
  {
    'image':'images/pizza.jpg',
    'title':'Pizza House',
    'foodType':'Pizza-Tasty',
    'rating':'4.3(20)',
    'hotel':'Dominos Alandi Pune',
    'favIcon' : Icons.favorite,
  },
  {
    'image':'images/veggies.jpg',
    'title':'The Fresh House',
    'foodType':'Veggies-Healthy',
    'rating':'4.0(10)',
    'hotel':'Grand Hotel Pune',
    'favIcon' : Icons.favorite_border,
  },
  {
    'image':'images/mexican.jpg',
    'title':'Mexican Food',
    'foodType':'Mexican-Healthy',
    'rating':'4.4(50)',
    'hotel':'Taj Hotel Pune',
    'favIcon' : Icons.favorite_border,
  },
  {
    'image':'images/vegan.jpg',
    'title':'Vegan Meal',
    'foodType':'Vegan-Healthy',
    'rating':'4.5(100)',
    'hotel':'Ramdev Dhaba Pune',
    'favIcon' : Icons.favorite_border,
  },
  {
    'image':'images/burger.jpg',
    'title':'Burger King',
    'foodType':'Burger-Healthy',
    'rating':'4.3(70)',
    'hotel':' BurgerKing Pune',
    'favIcon' : Icons.favorite,
  },
  {
    'image':'images/south.jpg',
    'title':'South Foody',
    'foodType':'South-Healthy',
    'rating':'4.7(150)',
    'hotel':'Carnival Hotel Pune',
    'favIcon' : Icons.favorite_border,
  },
  {
    'image':'images/rollmania.jpg',
    'title':'Rollmania',
    'foodType':'Rolls-Tasty',
    'rating':'4.2(60)',
    'hotel':'Rollmania Kothrud Pune',
    'favIcon' : Icons.favorite,
  },
  {
    'image':'images/thali.jpg',
    'title':'Indian Thali',
    'foodType':'Thali-Healthy',
    'rating':'4.4(80)',
    'hotel':'Lemon Hotel Pune',
    'favIcon' : Icons.favorite,
  },
  {
    'image':'images/sandwitchhub.jpg',
    'title':'Sandwitch Tasty',
    'foodType':'Sandwitch-Healthy',
    'rating':'4.8(75)',
    'hotel':'Kinara Hotel Pune',
    'favIcon' : Icons.favorite_border,
  }
];