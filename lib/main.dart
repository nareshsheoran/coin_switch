import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coin Switch'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0),
                child: Text(
                  'Total Worth',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '₹29,898',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.info_outline),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      'BUY BITCOIN',
                      style: TextStyle(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Deposit INR'),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0),
              child: Container(
                height: 175.0,
                width: 450.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('image/coinswitch.jpeg'),
                )),
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Popular Currencies',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        leading: Icon(Icons.list),
                        trailing: Text(
                          "ABC",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        title: Text("Name"));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
