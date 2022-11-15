import 'package:flutter/material.dart';

class gridviewcostum extends StatelessWidget {
  @override
  List img = [
    ('assets/images/eye.jpg'),
    ('assets/images/eye.jpg'),
    ('assets/images/eye.jpg'),
    ('assets/images/eye.jpg'),
    ('assets/images/eye.jpg'),
    ('assets/images/eye.jpg'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView Custom'),
        ),
        body: GridView.custom(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Image.asset(
              img[index],
              width: 50,
              height: 50,
            );
          }, childCount: img.length),
        ));
  }
}

void main() {
  runApp(MaterialApp(
    home: gridviewcostum(),
  ));
}
