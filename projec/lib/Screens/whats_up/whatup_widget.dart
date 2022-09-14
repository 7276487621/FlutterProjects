import 'package:flutter/material.dart';
import 'package:projec/utils/colors.dart';

Widget labels(String label, {Color color= Colors.white, double size = 14.0}) => Text(
      label.toUpperCase(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: size,
      ),
    );

Widget iconButton({
  IconData icon = Icons.more_vert,
  Function()? onTap,
}) =>
    IconButton(
      onPressed: onTap,
      icon: Icon(icon),
    );

List<Map> data = [
  {
    'image':
        'images/beutycat.jpg',
    'title': 'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle': 'Bhavani : tried...',
    'date': '9:04 AM',
  },
  {
    'image':
        'images/heart.jpeg',
    'title': 'ThinkQuotient Software Pune',
    'subtitle': 'Sachin : Thanks',
    'date': 'Yesterday',
  },
  {
    'image':
    'images/beutycat.jpg',
    'title': 'Qspyder Software Hinjawadi Pune',
    'subtitle': 'Hiii',
    'date': '15/08/2022',
  },
  {
    'image':
    'images/heart.jpeg',
    'title': 'Elpro City Mall Pimpari Pune',
    'subtitle': 'Madhuri',
    'date': '10/08/2022',
  },
  {
    'image':
    'images/beutycat.jpg',
    'title': 'Phonix Marketcity Vimannagar Pune',
    'subtitle': 'Ma\'am : Please Join Fast',
    'date': '07/08/2022',
  },
  {
    'image':
    'images/beutycat.jpg',
    'title': 'COEP Engineering Colage Pune',
    'subtitle': 'Radha',
    'date': 'Yesterday',
  },
  {
    'image':
    'images/beutycat.jpg',
    'title': 'Amanora Mall Pune Hadapsar Pune',
    'subtitle': 'Krishana',
    'date': '02/08/2022',
  },
  {
    'image':
    'images/heart.jpeg',
    'title': 'Central Marketcity Vimannagar Pune',
    'subtitle': 'Surya',
    'date': '23/07/2022',
  },
  {
    'image':
    'images/heart.jpeg',
    'title': 'COEP Engineering Colage Pune',
    'subtitle': 'Radha',
    'date': 'Yesterday',
  },
  {
    'image':
    'images/beutycat.jpg',
    'title': 'Amanora Mall Pune Hadapsar Pune',
    'subtitle': 'Krishana',
    'date': '02/08/2022',
  },
  {
    'image':
    'images/beutycat.jpg',
    'title': 'Central Marketcity Vimannagar Pune',
    'subtitle': 'Surya',
    'date': '23/07/2022',
  },
];
