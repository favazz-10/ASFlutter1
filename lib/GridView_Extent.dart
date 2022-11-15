import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridviewextent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: const Text('GridView Extent'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 38.0),
        child: GridView.extent(
          maxCrossAxisExtent: 130,
          crossAxisSpacing: 70,
          mainAxisSpacing: 70,
          children: [
            Card(
              shadowColor: Colors.greenAccent,
              elevation: 15,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.message,
                size: 50,
                color: Colors.orange,
              ),
            ),
            Card(
              elevation: 15,
              shadowColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.black,
              child: const Icon(
                CupertinoIcons.airplane,
                size: 50,
                color: Colors.pink,
              ),
            ),
            Card(
              elevation: 15,
              shadowColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.black,
              child: const Icon(
                Icons.ice_skating,
                size: 50,
                color: Colors.blueAccent,
              ),
            ),
            Card(
              elevation: 15,
              shadowColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.black,
              child: const Icon(
                Icons.ac_unit,
                size: 50,
                color: Colors.green,
              ),
            ),
            Card(
              elevation: 15,
              shadowColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.black,
              child: const Icon(
                Icons.accessibility_new_sharp,
                size: 50,
                color: Colors.purpleAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: gridviewextent(),
  ));
}
