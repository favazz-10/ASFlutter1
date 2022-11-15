import 'package:flutter/material.dart';

class gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 20,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1
        ),
        children: const [
          SizedBox(height: 100,
            child: Card(
              child: Text('Hi'),
              color: Colors.red,
            ),
          ),
          Card(
            child: Text('Hi'),
            color: Colors.red,
          ),
          Card(
            child: Text('Hi'),
            color: Colors.red,
          ),
          Card(
            child: Text('Hi'),
            color: Colors.red,
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: gridview(),
  ));
}
