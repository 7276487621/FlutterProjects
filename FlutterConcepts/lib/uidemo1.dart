import 'package:flutter/material.dart';

class UiDemo1 extends StatelessWidget {
  Widget boxContainer({
    IconData icon = Icons.search,
    String label = '',
    Color c1 = Colors.redAccent,
    Radius bottomLeftR =Radius.zero,
    Radius topRightR =Radius.zero,
    Radius topLeftR =   Radius.zero,
    Radius bottomRightR =  Radius.zero,
  }) =>
      Column(
        children: [
          Container(
              height: 150,
              width: 150,
              decoration:  BoxDecoration(
                color: c1 ,
                borderRadius:   BorderRadius.only(
                    bottomLeft: bottomLeftR,
                    topRight: topRightR,
                topLeft:topLeftR,
                bottomRight: bottomRightR),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(icon, size: 70, color: Colors.white),
                  Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              )),
        ],
      );

  Widget bigBoxContainer({
    IconData icon = Icons.search,
    String nameText = 'Shell Darwen',
    String paymentText = 'Merchant Payment',
    String currency = r'$30',
    String date = '19/01/2022',
    Color c2 = Colors.redAccent,
  }) =>
      Container(
        height: 154,
        width: 333,
        decoration:  BoxDecoration(
             color: c2,
          borderRadius:const BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                 Icon(
                  icon,
                  color: Colors.white,
                  size: 60,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    nameText,
                    style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    paymentText,
                    style: const TextStyle(color: Colors.white),
                  )
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    currency,
                    style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.white),
                  )
                ])
              ],
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          // color: Colors.pink,
          margin: const EdgeInsets.only(top: 27.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  r'$1200',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.menu,
                size: 40,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                boxContainer(
                    icon: Icons.search,
                    label: 'LOAD MONEY',
                    bottomLeftR: const Radius.circular(30.0),
                    topRightR: const Radius.circular(30.0),
                ),
                boxContainer(
                    icon: Icons.horizontal_split_outlined,
                    label: 'MARCHENT MONEY', c1: Colors.green,
                    topLeftR: const Radius.circular(30.0),
                    bottomRightR:const Radius.circular(30.0),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  boxContainer(
                      icon: Icons.print,
                      label: 'SEND MONEY',
                      c1: Colors.lightBlueAccent,
                      topLeftR: const Radius.circular(30.0),
                      bottomRightR:const Radius.circular(30.0),
                  ),
                  boxContainer(
                      icon: Icons.image,
                      label: 'REQUEST MONEY',
                      c1: Colors.purple,
                    bottomLeftR:const Radius.circular(30.0),
                    topRightR: const Radius.circular(30.0),
                  ),
                ],
              ),
            ),
            bigBoxContainer(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: bigBoxContainer(
                  icon: Icons.image,
                  nameText: 'John Doe',
                  currency: r'$50',
                  date: '23/01/2022',
                c2: Colors.purple,

              ),
            ),
          ],
        ),
      ],
    ));
  }
}
