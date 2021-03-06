import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'First.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    debugShowCheckedModeBanner: false,
    title: 'Sign Up',
    home: SignUp(),
    routes: {
      '/SignUp': (context) => LocalPage(),
    },
  ));
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate() {
    if (formkey.currentState!.validate()) {
      //print('Validation done.');
      Navigator.pushNamed(context, '/LocalPage');
    } else {
      print('Validation failed.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                      hintText: 'Enter First Name',
                    ),
                    validator: (username) {
                      if (username!.isEmpty) {
                        return 'First Name can not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                      hintText: 'Enter Last Name ',
                    ),
                    validator: (username) {
                      if (username!.isEmpty) {
                        return 'Last Name can not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Father Name ',
                      hintText: 'Enter Your Father Name',
                    ),
                    validator: (email) {
                      if (email!.isEmpty) {
                        return 'Father Name can not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Mother Name ',
                      hintText: 'Enter Your Mother Name',
                    ),
                    validator: (email) {
                      if (email!.isEmpty) {
                        return 'Father Name can not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Father Name ',
                      hintText: 'Enter Your Father Name',
                    ),
                    validator: (email) {
                      if (email!.isEmpty) {
                        return 'Father Name can not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Father Name ',
                      hintText: 'Enter Your Father Name',
                    ),
                    validator: (email) {
                      if (email!.isEmpty) {
                        return 'Father Name can not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(10.0),
                    ),
                    onPressed: () {
                      validate();
                      // Navigator.pushNamed(context, '/LocalPage');
                    },
                    child: Text(' Sign Up'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
