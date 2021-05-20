import 'package:coin_switch/button_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({Key key}) : super(key: key);

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 50, 8, 0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Market is down 12.06%',
                        style: TextStyle(fontSize: 19),
                      ),
                      SizedBox(width: 4),
                      Text('in last 24h'),
                      Expanded(child: Container()),
                      Icon(Icons.search)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton(
                        onPressed: () {
                          AllMarket();
                        },
                        child: Text(
                          'ALL',
                          style: TextStyle(
                            color: Color.fromRGBO(22, 35, 233, 1),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
