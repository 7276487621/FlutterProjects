
import 'package:flutter/material.dart';

class StatefullDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => StatefullDemoState();
}

class StatefullDemoState extends State<StatefullDemo> {
 int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: Icon(Icons.menu),
        title:GestureDetector(
          child: Text('Title'),
          onTap: (){
            print('Tapped');
          },
        ),

        actions:const [
          Icon(Icons.notifications),
          Icon(Icons.login_sharp),
          SizedBox(
            width: 20.0,
          )
        ],

        bottom: PreferredSize(
          preferredSize: Size(0,50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:const [
              Icon(Icons.notifications),
              Icon(Icons.notifications),
              Icon(Icons.notifications),
              Icon(Icons.notifications),
              Icon(Icons.notifications),
              Icon(Icons.notifications),
            ],
          ),
        ),
      ),

      endDrawer: Drawer(),

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.extended(
                  elevation: 15.0,
                  onPressed:(){
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
                  onPressed:(){
                    number++;
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                  label: Text('Plus'),
                ),
                ],
            ),

            SizedBox(height: 50.0,),
            Container(
              color: Colors.green,
              child: GestureDetector(
                onTap: (){
                  print('Click on row');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    Icon(Icons.add),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text('Plus'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            GestureDetector(
              child: TextButton(onPressed: (){},child: Text('Submit'),),
            ),
            MaterialButton(onPressed: (){},
            color: Colors.lightBlueAccent,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side:BorderSide(
                width: 2.0,
                color: Colors.red
              )),
            child: Text('Login'),
            ),
            OutlinedButton(onPressed: (){}, child: Text('Submit'))
          ],
        )

      ),
    );
  }
}
