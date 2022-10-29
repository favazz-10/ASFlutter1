import 'package:flutter/material.dart';

class mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('MainScreen'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              'Contacts',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
          Card(color: Colors.black12,
            child: ListTile(
              title: const Text('Nihal'),
              subtitle: const Text('7352749572'),
              leading: Image.asset('assets/images/contact-book.png'),
              trailing: Wrap(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.message, color: Colors.red),
                ),
                Icon(
                  (Icons.call_rounded),
                  color: Colors.red,
                )
              ]),
            ),
          ),
          // Divider(
          //   thickness: 3,
          // ),
          Card(color: Colors.black12,
            child: ListTile(
              title: const Text('Shibili'),
              subtitle: const Text('8552744353'),
              leading: Image.asset('assets/images/contact-book.png'),
              trailing: Wrap(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(Icons.message, color: Colors.red),
                ),
                Icon(
                  (Icons.call_rounded),
                  color: Colors.red,
                )
              ]),
            ),
          ),
          // Divider(thickness: 3,),
          Card(color: Colors.black12,
            child: ListTile(
              title: const Text('Favaz'),
              subtitle: const Text('9752749572'),
              leading: Image.asset('assets/images/contact-book.png'),
              trailing: Wrap(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.message, color: Colors.red),
                ),
                Icon(
                  (Icons.call_rounded),
                  color: Colors.red,
                )
              ]),
            ),
          ),
          // Divider(thickness: 3,),
          Card(
            color: Colors.black12,

            child: ListTile(
              title: const Text('Nasib'),
              subtitle: const Text('8052749572'),
              leading: Image.asset('assets/images/contact-book.png'),
              trailing: Wrap(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.message, color: Colors.red),
                ),
                Icon(
                  (Icons.call_rounded),
                  color: Colors.red,
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: mainscreen(),
  ));
}
