import 'package:flutter/material.dart';

class customscrollview extends StatefulWidget {
  @override
  State<customscrollview> createState() => _customscrollviewState();
}

class _customscrollviewState extends State<customscrollview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.pink,
            floating: true,
            pinned: true,
            title: Text('CustomAppBar'),
            actions: [Icon(Icons.add_shopping_cart), Icon(Icons.favorite)],
            bottom: AppBar(
              backgroundColor: Colors.pink,
              title: Container(
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(14),color: Colors.white),
                height: 40,
                // color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Product',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: customscrollview(),
  ));
}
