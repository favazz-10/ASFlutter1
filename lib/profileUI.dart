import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profileui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black54,
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.black54,
          )
        ],
        title: Text('Profile UI'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 340,
            width: 400,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/eye.jpg'),
                    maxRadius: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0, left: 99),
                    child: Row(
                      children: const [
                        Padding(
                            padding: EdgeInsets.only(right: 13.0),
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blueAccent,
                              size: 37,
                            )),
                        Padding(
                            padding: EdgeInsets.only(right: 13.0),
                            child: Icon(
                              FontAwesomeIcons.googlePlus,
                              color: Colors.redAccent,
                              size: 37,
                            )),
                        Padding(
                            padding: EdgeInsets.only(right: 13.0),
                            child: Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.blue,
                              size: 37,
                            )),
                        Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.indigo,
                          size: 37,
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text(
                      'chromicle',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    '@favazz',
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.w600),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Mobile App Developer and open source enthusiastic',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 322,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: ListTile(
                              tileColor: Colors.black12,
                              selectedTileColor: Colors.red,
                              leading: Icon(Icons.account_circle_rounded),
                              title: Text('Privacy'),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: ListTile(
                              tileColor: Colors.black12,
                              leading: Icon(Icons.av_timer_rounded),
                              title: Text('Purchase History'),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: ListTile(
                              tileColor: Colors.black12,
                              leading: Icon(Icons.help),
                              title: Text('Help and Support'),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: ListTile(
                              tileColor: Colors.black12,
                              leading: Icon(Icons.settings),
                              title: Text('Settings'),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: ListTile(
                              tileColor: Colors.black12,
                              leading: Icon(Icons.manage_accounts_sharp),
                              title: Text('Invite a Friend'),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        ListTile(
                            tileColor: Colors.black12,
                            leading: Icon(Icons.logout),
                            title: Text('Logout'),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: profileui(),
  ));
}
