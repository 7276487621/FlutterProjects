import 'package:flutter/material.dart';
import 'package:foodyapp/provider/my_provider.dart';
import 'package:foodyapp/space.dart';
import 'package:foodyapp/utils/colors.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String image = '';
  String foodName = '';
  int price = 0;
  Map data = {};

  Widget cartItem({
    String image = '',
    String name = '',
    int price = 0,
    int quantity = 1,
    required final VoidCallback onTap,
  }) =>
      Column(
        children: [
          Row(
            children: [
              Container(
                height: 170,
                width: 170,
                padding: EdgeInsets.only(left: 5.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
              ),
              horizontalSpace(20.0),
              Expanded(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Very Tasty Burger',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '\$ $price',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              horizontalSpace(10.0),
                              Text(
                                quantity.toString(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: onTap,
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);
    int total = provider.totalPrice();
    data = ModalRoute.of(context)!.settings.arguments as Map;
    image = data['image'];
    foodName = data['foodName'];
    price = data['price'];
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: deeporange,
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.only(left: 20.0, bottom: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ $total',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'CheckOut',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, 2);
                },
              ),
              title: const Text(
                'CartDetail',
                style: TextStyle(
                  fontFamily: 'Billabong',
                  fontSize: 30.0,
                ),
              ),
              centerTitle: true,
              backgroundColor: deeporange,
              elevation: 0.0,
            ),
            body: ListView.builder(
                itemCount: provider.cartList.length,
                itemBuilder: (context, index) {
                  provider.getDeleteIndex(index);
                  return cartItem(
                    onTap: () {
                      provider.delete();
                    },
                    image: provider.cartList[index].image,
                    name: provider.cartList[index].name,
                    price: provider.cartList[index].price,
                    quantity: provider.cartList[index].quantity,
                  );
                })));
  }
}
