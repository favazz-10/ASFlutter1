import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              color: Colors.green,
            ),
          ),
          Center(
            child: Container(height: 300,width: 300,
              color: Colors.yellow,
            ),
          ),
          Positioned(right: 130,bottom: 20,
            child: Container(height: 100,width: 100,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: stack(),
  ));
}
