import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: HomeScreen(),
      );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool status = false;

  var CustomSwitch;

  @override
  Widget build(BuildContext context) {
    var customSwitch = CustomSwitch;
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            customSwitch(
              activeColor: Colors.pinkAccent,
              value: status,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  status = value;
                });
              },
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Value : $status',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  // ignore: avoid_types_as_parameter_names

}
