
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodyapp/provider/my_provider.dart';
import 'package:foodyapp/utils/colors.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  _DetailPageState();
  int quantity = 1;
  String imagePath = '';
  String foodName = '';
  int price = 0;

  Map data = {};
  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);
    data = ModalRoute.of(context)!.settings.arguments as Map;
    imagePath = data['imagePath'];
    foodName = data['foodName'];
    price = data['price'];

    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: deeporange,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
              child: Center(child:CircleAvatar(
                radius: 105.0,
                backgroundImage: AssetImage(imagePath),
              )),
              ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
                  width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                color: Color(0XFFe2e2e2)
              ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                         Text(foodName,style: TextStyle(
                          fontSize: 40.0,
                        ),),
                    Text('Delicius food!!'),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap:(){
                                  setState(() {
                                    quantity <= 0 ? quantity = 0 : quantity--;
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              SizedBox(width:15,),
                              Text(quantity.toString(),style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 15.0,),
                              GestureDetector(
                                onTap:(){
                                  setState(() {
                                    quantity++;
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  child: Icon(Icons.add),
                                ),
                              )
                            ],
                          ),
                          Text('\$ ${price * quantity}',style: TextStyle(
                            fontSize: 30.0
                          ),
                          ),
                        ],
                      ),
                      Text('Description',style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('Food nourishes us, delights us, and generally fuels our daily lives.'),
                      Container(
                        height: 55,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){
                              if(quantity >0){
                                provider.addToCart(
                                  image: imagePath,
                                  name: foodName,
                                  price: price,
                                  quantity: quantity,
                                );
                              }

                                if(quantity == 0){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Please select the quantity'),
                                      duration: Duration(seconds: 1),
                                    )
                                  );
                                }
                                else{

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            'Suucessfully added to cart!!'),
                                        duration: Duration(seconds: 1),
                                      ),
                                    );
                                    Timer(Duration(seconds: 2), ()
                                    {
                                    Navigator.pushNamed(
                                        context, 'CartPage', arguments: {
                                      'image': imagePath,
                                      'foodName': foodName,
                                      'price': price,
                                    });

                                  });
                                }





                            },

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart),
                                SizedBox(width: 10.0,),
                                Text('Add To Cart',style: TextStyle(
                                  fontSize: 20.0
                                ),),
                              ],
                            ),


                            style: ButtonStyle(

                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                              backgroundColor: MaterialStateProperty.all(deeporange)
                            ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
