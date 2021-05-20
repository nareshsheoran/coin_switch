import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          child: Column(children: [
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0.0, 0),
                child: Text(
                  'Total Worth',
                  style: TextStyle(fontSize: 18.0),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      '₿  BUY BITCOIN',
                      style: TextStyle(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('      Deposit INR      '),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            Expanded(
              child: ListView(children: [
                buildColumn('Bitcoin', 'BTC', '₹33,48,832.15', '-3.12%'),
                buildColumn('Ethereum', 'ETH', '₹2,24,237.53', '-1.9%'),
                buildColumn('DogeCoin', 'DOGE', '₹32.687241', '+2.2%'),
                buildColumn('VeChain', 'VET', '₹10.25', '+2.66%'),
                buildColumn('IOST', 'IOST', '₹2.87', '-7.14%'),
                buildColumn('DigiByte', 'DGB', '₹7.48', '+11.33%'),
                buildColumn('Tron', 'TRX', '₹7.159013', '-12.17%'),
              ]),
            )
          ]),
        ));
  }

  Column buildColumn(
      String currency, String name, String rate, String percent) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey,
            child: Row(
              children: [
                Icon(Icons.info_outline),
                SizedBox(
                  width: 8,
                ),
                Column(
                  children: [
                    Text(
                      currency,
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Text(name)
                  ],
                ),
                Expanded(child: Container()),
                Column(
                  children: [
                    Text(
                      rate,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      percent,
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
