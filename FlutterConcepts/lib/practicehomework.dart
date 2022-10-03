import 'package:flutter/material.dart';

class PracticeHomeWork extends StatelessWidget {
  Widget commonContainer(
          {String label = '', IconData icon = Icons.access_alarm_sharp}) =>
      Column(
        children: [
          Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                    color: Colors.grey,
                    offset: Offset(5, 9),
                  ),
                ]),
            child: Icon(icon, color: Colors.white70, size: 40),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 800,
      width: 380,
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.outer,
              blurRadius: 20.0,
              color: Colors.grey,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:  EdgeInsets.only(left: 20.0, top: 30.0),
            child: Icon(Icons.arrow_back_outlined),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Add Itenerary',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Choose type of activity that will you\nadd in your camp schedule',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  commonContainer(label:'Camp',icon: Icons.access_alarms_sharp),
                  commonContainer(label:'Fishing',icon: Icons.traffic_rounded),
                  commonContainer(label:'Packing',icon: Icons.backpack_outlined),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    commonContainer(label:'Forest',icon:Icons.forest_outlined),
                    commonContainer(label:'Transport',icon: Icons.bus_alert_outlined),
                    commonContainer(label:'Rafting',icon: Icons.crisis_alert_sharp),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  commonContainer(label:'Radio',icon: Icons.radio),
                  commonContainer(label:'Tea',icon: Icons.rice_bowl_outlined),
                  commonContainer(label:'Telescope',icon: Icons.telegram_outlined),
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 65,
            width: 350,
            padding: const EdgeInsets.only(top: 24.0),
            decoration:const  BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(28.0),
                  bottomRight: Radius.circular(28.0)
              )

            ),

            child: const Text(
              'CONTINUE',
              style: TextStyle(
              fontSize: 20,
                color: Colors.white70,
                fontWeight: FontWeight.bold,

            ),
              textAlign: TextAlign.center,
            ),

          ),
        ],
      ),
    ));
  }
}
