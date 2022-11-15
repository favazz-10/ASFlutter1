import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class lottieanimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,
        title: Text('Lottie Animation'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Lottie.asset('assets/animations/success.json',
                width: 200, height: 200),
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_ScasUSQwfz.json',
                width:100,height: 100)
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: lottieanimation(),
  ));
}
