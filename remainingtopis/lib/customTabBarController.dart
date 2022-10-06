
import 'dart:ffi';

import 'package:flutter/material.dart';

class customTabBar extends StatefulWidget {
  const customTabBar({Key? key}) : super(key: key);

  @override
  State<customTabBar> createState() => customTabBarState();
}

class customTabBarState extends State<customTabBar> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this,initialIndex:1,
    );
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Widget'),
        bottom: TabBar(
          controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.cloud_circle),
              ),
              Tab(
                icon: Icon(Icons.umbrella_sharp),
              ),
              Tab(
                icon: Icon(Icons.sunny),
              ),
            ]
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
            Home(),
            Rainy(),
            Sunny(),
        ],
      ),

    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
      bool color = false;

      Color? bcColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('I am in Home'),
            FloatingActionButton(
                onPressed: (){
              color = !color;
              setState(() {
                color ? bcColor = Colors.teal
                    :bcColor = Colors.pink;
              });
            })
          ],
        )

      ),
    );
  }
}

class Rainy extends StatelessWidget {
  const Rainy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('I am in Rainy page'),
      ),
    );
  }
}

class Sunny extends StatelessWidget {
  const Sunny({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('I am in Sunny page'),
      ),
    );
  }
}



