import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    title: 'Success',
    home: Success(),
  ));
}

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bonghobondho Sheike Mujibor Rohman'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Setting',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.greenAccent[400],
        elevation: 50.0,
      ), //IconButton
      body: Center(
        child: Container(
          width: 500.0,
          height: 400.0,
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
              image: NetworkImage(
                  "https://c.ndtvimg.com/2020-04/f71gm4k4_sheilkh-mujibur-rahman-fb-650_625x300_07_April_20.jpg"),
              fit: BoxFit.fitHeight,
            ),
            shape: BoxShape.rectangle,
          ),
          padding: EdgeInsets.all(35),
          margin: EdgeInsets.all(20),
          alignment: Alignment.bottomRight,
          transform: Matrix4.rotationZ(0.1),
          child: Text(
            "Hello! I am in the container widget",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Master'),
              accountEmail: Text('mddeluar1995@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
