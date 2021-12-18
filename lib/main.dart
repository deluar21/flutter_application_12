import 'package:flutter/material.dart';
import 'package:flutter_application_12/Loginform.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    debugShowCheckedModeBanner: false,
    title: 'Sign Up',
    home: SignUp(),
    routes: {
      '/success': (context) => Success(),
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
      Navigator.pushNamed(context, '/success');
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
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter username eg. khanvi123',
                  ),
                  validator: (username) {
                    if (username!.isEmpty) {
                      return 'Username can not be empty';
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
                    labelText: 'Email',
                    hintText: 'Enter email eg. xvirus.bd@gmail.com',
                  ),
                  validator: (email) {
                    if (email!.isEmpty) {
                      return 'Email can not be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter password',
                  ),
                  validator: (pass) {
                    if (pass!.isEmpty) {
                      return 'Password can not be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.url,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Picture',
                    hintText: 'Choose',
                    ),
                  validator: (pass) {
                    if (pass!.isEmpty) {
                      return 'Picture can not be empty';
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
                    // Navigator.pushNamed(context, '/success');
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
