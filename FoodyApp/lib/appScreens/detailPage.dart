
import 'package:flutter/material.dart';
import 'package:foodyapp/utils/colors.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
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
                backgroundImage: AssetImage('images/pizza.jpg'),
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

                         Text('GoldenCorn',style: TextStyle(
                          fontSize: 40.0,
                        ),),
                    Text('PizzaMania'),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(width:15,),
                              Text('1',style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 15.0,),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Icon(Icons.add),
                              )
                            ],
                          ),
                          Text('\$ 150',style: TextStyle(
                            fontSize: 30.0
                          ),
                          ),
                        ],
                      ),
                      Text('Description',style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('The fresh sweet corn flavor goes beautifully with the tangy sauce and salty cheese that the resulting sweet corn pizza is just too spectacular! The Sweet corn pizza is good to have as a breakfast, dinner, or any time of the day as it’s balanced with the cheesy corny goodness.'),
                      Container(
                        height: 55,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){},

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
