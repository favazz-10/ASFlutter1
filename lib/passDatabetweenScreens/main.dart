import 'package:flutter/material.dart';
import 'package:project2/passDatabetweenScreens/productListScreen.dart';
import 'package:project2/passDatabetweenScreens/singleProductScreen.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ProductListScreen(),
      routes: {
        "single-product": (context) =>  SingleProductScreen(),
      },
    );
  }
}