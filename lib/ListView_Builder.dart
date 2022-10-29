import 'package:flutter/material.dart';

class ListviewBuilder extends StatelessWidget {
  var datas = <String>['a1', 'a2', 'a3'];
  var colors = <int>[200, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ListView Builder Screen',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (BuildContext cntx, int index) {
            return SizedBox(
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                // height: 50,

                color: Colors.pinkAccent[colors[index]],
                child: Center(
                  child: Text(datas[index]),
                ),
              ),
            );
          }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ListviewBuilder(),
  ));
}
