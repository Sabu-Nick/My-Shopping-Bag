import 'package:flutter/material.dart';

import 'Screen/shopping_bag_home_page.dart';
void main(){
  runApp(MyShoppingBag());
}
class MyShoppingBag extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Shopping Bag",
      home: ShoppingBagHomePage(),
    );
  }

}