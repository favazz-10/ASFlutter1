import 'package:flutter/material.dart';
import 'package:project2/login.dart';

void main() {
  runApp(MaterialApp(
    home: signup(),
  ));
}

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool variable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: const Text('Signup Page'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    'Create an Account',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      label: Text('Email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  obscuringCharacter: '*',
                  obscureText: variable,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: variable
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            variable ? variable = false : variable = true;
                          });
                        },
                      ),
                      label: const Text('password'),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  obscuringCharacter: '*',
                  obscureText: variable,
                  decoration: InputDecoration(suffixIcon: IconButton(
                    icon: variable
                        ? const Icon(Icons.remove_red_eye)
                        : const Icon(Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        variable ? variable = false : variable = true;
                      });
                    },
                  ),
                      prefixIcon: Icon(Icons.password),
                      label: Text('confirm password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {},
                        child: const Text('SignUp'))),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: const Text(
                    'Already have an account?Login here',
                    style: TextStyle(color: Colors.pink),
                  ))
            ],
          ),
        ));
  }
}
