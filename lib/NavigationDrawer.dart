import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class navdrawer extends StatefulWidget {
  @override
  State<navdrawer> createState() => _navdrawerState();
}

class _navdrawerState extends State<navdrawer> {
  List title = ['Favaz', 'Nihal', 'Shibili'];
  List sub = ['hiii', 'morning', 'how r u'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Muhammed Favaz'),
              accountEmail: const Text('favaz@gmail.con'),
              currentAccountPicture: Image.asset('assets/images/headphone.png'),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/eye.jpg',
                      ),
                      fit: BoxFit.cover)),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media.idownloadblog.com/wp-content/uploads/2021/09/Apple-September-Event-2021-mock-up-e1631139481280.png'),
                ),
              ],
              otherAccountsPicturesSize: Size.square(30),
            ),
            const ListTile(
              title: Text('Account'),
              trailing: Icon(Icons.home),
            ),
            const ListTile(
              title: Text('Settings'),
              trailing: Icon(Icons.settings),
            ),
            ElevatedButton(
                onPressed: () async {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('exit'),
                          content: Text('Do u really want to exit the app??'),
                          actions: <Widget>[TextButton(onPressed: () {
                            SystemNavigator.pop();
                          }, child: Text('yes')),
                            TextButton(onPressed: () {
                              Navigator.pop(context);
                            }, child: Text('cancel'))
                          ],
                        );
                      });
                },
                child: Text('closeeee')),
            ElevatedButton(onPressed: (){QuickAlert.show(
              context: context,
              type: QuickAlertType.confirm,
              text: 'Do you want to logout',
              confirmBtnText: 'Yes',
              onConfirmBtnTap: (){SystemNavigator.pop();},
              cancelBtnText: 'No',
              confirmBtnColor: Colors.green,
              backgroundColor: Colors.redAccent,

            );}, child: Text('quick alert'))
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: navdrawer(),
  ));
}
