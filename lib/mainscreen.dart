import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('MainScreen'),centerTitle: true,),);
  }
}
void main(){
  runApp(MaterialApp(home: mainscreen(),));
}