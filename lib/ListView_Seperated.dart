import 'package:flutter/material.dart';

class listveiwseperated extends StatelessWidget {
  List a = ['a1', 'a2', 'a3'];
  List c=[500,400,300];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: const Text('ListView Separator'),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return SizedBox(
                height: 100,
                child: Card(
                  color: Colors.green[c[index]],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      a[index],
                      textAlign: TextAlign.center,style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ));
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 5,
              color: Colors.purple[c[index]],
            );
          },
          itemCount: a.length,
        ));
  }
}

void main() {
  runApp(MaterialApp(
    home: listveiwseperated(),
  ));
}
