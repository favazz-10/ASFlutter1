import 'package:flutter/material.dart';

class gridviewbuilder extends StatelessWidget {
  @override
  List a = [
    'assets/images/headphone.png',
    'assets/images/contact.png',
    'assets/images/contact-book.png',
    'assets/images/clapperboard.png',
    'assets/images/headphone.png',
    'assets/images/contact.png'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GridView Builder'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: a.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Image.asset(a[index]);
          }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: gridviewbuilder(),
  ));
}
