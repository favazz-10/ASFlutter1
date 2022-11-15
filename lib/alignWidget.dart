import 'package:flutter/material.dart';

class alignwidget extends StatefulWidget {
  @override
  State<alignwidget> createState() => _alignwidgetState();
}

class _alignwidgetState extends State<alignwidget> {
  String abc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.pink,
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/ps4-controller-png-42099 (1).png',
                    height: 70,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: alignwidget(),
  ));
}
