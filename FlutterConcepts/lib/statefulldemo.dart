import 'package:flutter/material.dart';

class StateFullDemo extends StatefulWidget {
  @override
  State<StateFullDemo> createState() => StateFullDemoStateNew();
}

class StateFullDemoStateNew extends State<StateFullDemo> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        title: Text('Welcome To Counter App'),

        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.login_sharp),
          SizedBox(
            width: 20.0,
          )

        ],


        bottom: PreferredSize(
            preferredSize: Size(0, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.notifications),
                Icon(Icons.login_sharp),
                Icon(Icons.shopping_bag),
                Icon(Icons.mobile_screen_share_rounded),
                Icon(Icons.emoji_emotions_outlined),
                Icon(Icons.emoji_events_outlined),
              ],
            )),

      ),
      drawer: Drawer(),
    // endDrawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.extended(
                  elevation: 15.0,
                  onPressed: () {
                    setState(() {
                      number <= 0 ? number = 0 : number--;
                    });
                  },
                  icon: Icon(Icons.remove),
                  label: Text('Minus'),
                ),
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 30.0),
                ),
                FloatingActionButton.extended(
                  elevation: 15.0,
                  onPressed: () {
                    number++;
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                  label: Text('Plus'),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.purple,
              child: GestureDetector(
                onTap: () {
                  print('Clicked on Row');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.add),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text('Plus'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            GestureDetector(
              child: TextButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.pink,
              elevation: 15.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: const BorderSide(
                    color:Colors.black54,
                    width: 2.0,
                  )),
              child: const Text('Login'),
            ),
            OutlinedButton(
              onPressed: () {},
              style:
                  OutlinedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
