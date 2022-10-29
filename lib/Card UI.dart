import 'package:flutter/material.dart';

class Cardui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
        title: Text('Card UI'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 17),
        child: Row(
          children: [
            Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  color: Colors.lightBlue,
                  child: const SizedBox(
                    width: 170,
                    height: 80,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(Icons.message,size: 30,),
                        trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.green,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.linked_camera,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.red,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.ac_unit,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.purpleAccent,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.call,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.orangeAccent,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.menu_book_sharp,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.pinkAccent,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.keyboard_voice_rounded,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                  color: Colors.orange,
                  child: const SizedBox(
                    width: 170,
                    height: 80,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(Icons.add_alert,size: 30),
                        trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.pink,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.stars_rounded,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.teal,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.collections_bookmark_sharp,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.deepOrangeAccent,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.mail,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.blue,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.vibration_rounded,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    color: Colors.lightGreen,
                    child: const SizedBox(
                      width: 170,
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.add_to_drive_sharp,size: 30),
                          trailing: Text('Heart Shaker',style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Cardui(),
  ));
}
