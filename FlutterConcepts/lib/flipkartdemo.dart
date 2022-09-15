import 'package:flutter/material.dart';
import 'package:projec/Screens/registration/space.dart';
import 'package:projec/utils/colors.dart';

class FlipkartApp extends StatelessWidget {
  Widget iconTextContainer({
    IconData icon = Icons.menu,
    Color iconColor = Colors.blue,
    String iconText = 'All Categories',
  }) =>
      Column(
        children: [
          Icon(
            icon,
            size: 35.0,
            color: iconColor,
          ),
          Text(
            iconText,
            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      );

  Widget myBoxCrad({String image = 'images/flipkartdays.jpg'}) => Container(
        height: 190,
        width: 180,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, size: 40.0),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Flipkart',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 26),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: Text(
                    'Explore',
                    style:
                        TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                  ),
                ),
                Text(
                  'Plus',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellowAccent,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notification_important, size: 35.0),
          ),
          Icon(
            Icons.public,
            size: 35.0,
          ),
          SizedBox(
            width: 10.0,
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size(0, 60.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SizedBox(
              height: 40,
              width: 380,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0XFFFFFFFF),
                  hintText: 'Search for Products, Brands and More',
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide: BorderSide(color: white),
                  ),
                  hintStyle: TextStyle(
                      color: grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      height: 3.0),
                  suffixIcon: Container(
                      decoration: const BoxDecoration(
                        color: Color(0X909FD1F5),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(6.0),
                            topRight: Radius.circular(6.0)),
                      ),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.blueAccent,
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconTextContainer(),
                    iconTextContainer(
                        icon: Icons.ice_skating,
                        iconColor: Colors.red,
                        iconText: 'Essential'),
                    iconTextContainer(
                        icon: Icons.local_offer,
                        iconColor: Colors.deepPurple,
                        iconText: 'Offer Zone'),
                    iconTextContainer(
                        icon: Icons.shopping_cart,
                        iconColor: Colors.orange,
                        iconText: 'Grocery'),
                    iconTextContainer(
                        icon: Icons.mobile_friendly_outlined,
                        iconColor: Colors.brown,
                        iconText: 'Mobiles'),
                    iconTextContainer(
                        icon: Icons.electric_bike_outlined,
                        iconColor: Colors.green,
                        iconText: 'Electics'),
                  ],
                ),
              ),
            ),
            Container(
              height: 190.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: AssetImage('images/flipkart.jpg'), fit: BoxFit.cover),
              ),
            ),
            verticalSpace(6.0),
            Container(
              height: 80.0,
              width: 385.0,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          r'EXTRA $30 OFF',
                          style: TextStyle(
                              color: blue900,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'ON FASHION',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 26.0,
                      left: 48.0,
                    ),
                    child: FloatingActionButton.extended(
                      onPressed: () {},
                      icon: const Text(
                        'Shop Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      label: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(6.0),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Discounts for You',
                            style:
                            TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: blue900,
                          mini: true,
                          child: const Icon(
                            Icons.arrow_forward_ios,
                          ),

                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      myBoxCrad(),
                      myBoxCrad(image: 'images/flip.jpg'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
