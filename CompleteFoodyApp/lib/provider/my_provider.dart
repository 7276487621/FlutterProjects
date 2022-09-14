import 'package:flutter/material.dart';

import '../utils/cart_modal.dart';

class MyProvider extends ChangeNotifier{
/// adding to cart///
  List<CartModle> cartList = [];
  List<CartModle> newCartList = [];

   late CartModle cartModle;
   void addToCart({
     String image='',
     String name='',
     int price=0,
     int quantity=1
   }){
    cartModle = CartModle(
        image: image,
        name: name,
        price: price,
        quantity: quantity
    );
    newCartList.add(cartModle);
    cartList = newCartList;
   }
   get throCartList{
     return cartList;
   }

   int totalPrice(){
     int total =0;
     cartList.forEach((element) {
       total+= element.price * element.quantity;
     });
     return total;
   }

   late int deleteIndex;

   void getDeleteIndex(int index){
        deleteIndex = index;
   }

   void delete(){
     cartList.removeAt(deleteIndex);
     notifyListeners();
   }

}