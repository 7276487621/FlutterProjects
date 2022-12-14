
import 'package:flutter/material.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> items=[];
  int currentIndex = 0;
  Color? selectedItemColor;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const List<Widget> _widgetOptions =<Widget>[
    Text(
      'Index 0:Home',
      style: optionStyle,
    ),
    Text(
      'Index 1:Buisness',
      style: optionStyle,
    ),
    Text(
      'Index 2:School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:  BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School'
            ),
          ],
        currentIndex: _selectedIndex,
          selectedItemColor:Colors.amber[800],
        onTap:_onItemTapped
      ),
    );
  }
}
