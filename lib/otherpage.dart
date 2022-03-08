// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'main.dart';

class op extends StatelessWidget {
  get controller => null;

  // final String ntext;
  // const op(this.ntext);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WatttPad',
              style: TextStyle(color: Colors.grey[850], fontFamily: 'Lora')),
          backgroundColor: Colors.deepOrange,
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
              decoration: BoxDecoration(color: Colors.deepOrange),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Application())),
            ),
            ListTile(
                title: Text('Stories'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => op()))),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        )),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.book),
                      title: Text('A Humorous Story'),
                      subtitle: Text('Written by Dummy User'),
                      minVerticalPadding: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('OPEN'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.book),
                    title: Text('An Adventurous Story'),
                    subtitle: Text('Written by Dummy User2'),
                    minVerticalPadding: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('OPEN'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
