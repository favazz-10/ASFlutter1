import 'package:flutter/material.dart';

class movie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(appBar: AppBar(title: const Text('movies'),centerTitle: true,),);
  }

}
void main(){
  runApp(MaterialApp(home: movie(),));
}