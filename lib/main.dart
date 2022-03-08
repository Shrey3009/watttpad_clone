// ignore_for_file: prefer_const_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';
import 'otherpage.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String rtext = 'Start reading';
  String wtext = 'Start writing';
  void method1() {
    setState(() {
      rtext = 'you clicked raised button';
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WatttPad'),
          backgroundColor: Colors.orange[200],
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Dummy User'),
              accountEmail: Text('dummy@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black54,
                child: Text('M'),
              ),
              decoration: BoxDecoration(color: Colors.orange[200]),
            ),
            ListTile(
              title: Text('Home'),
              // trailing: Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => op('page 1'))),
            ),
            ListTile(
                title: Text('Stories'),
                // trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => op('page 2')))),
            ListTile(
              title: Text('Close'),
              // trailing: Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 200.0,
                  height: 70.0,
                  child: ElevatedButton(
                      onPressed: () {
                        method1();
                      },
                      child: Text(rtext),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ))),
              SizedBox(height: 10),
              SizedBox(
                  width: 200.0,
                  height: 70.0,
                  child: ElevatedButton(
                      onPressed: () {
                        method1();
                      },
                      child: Text(wtext),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ))),
            ],
          ),
        ));
  }
}
