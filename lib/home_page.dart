import 'package:coin_switch/currency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Currency> currencyList = [];

  @override
  void initState() {
    initCurrency();
    super.initState();
  }

  void initCurrency() {
    currencyList.add(Currency(
        name: "Bitcoin",
        shortName: "BTC",
        price: 4300000,
        percent: 12,
        icon: Icons.info));
    currencyList.add(Currency(
        name: "Ethereum",
        shortName: "ETH",
        price: 287000,
        percent: 6.3,
        icon: Icons.info));
    currencyList.add(Currency(
        name: "Litecoin",
        shortName: "LTC",
        price: 13000,
        percent: -3.5,
        icon: Icons.icecream));
    currencyList.add(Currency(
        name: "Dogecoin",
        shortName: "DOGE",
        price: 59,
        percent: 26.1,
        icon: Icons.bathtub));
    currencyList.add(Currency(
        name: "Dogecoin",
        shortName: "DOGE",
        price: 59,
        percent: 26.1,
        icon: Icons.bathtub));
    currencyList.add(Currency(
        name: "Dogecoin",
        shortName: "DOGE",
        price: 59,
        percent: 26.1,
        icon: Icons.bathtub));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).canvasColor.withOpacity(0.99),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(children: [
                topCard(),
                SizedBox(height: 24),
                infoImageWidget(context),
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
                    child: ListView.builder(
                        itemCount: currencyList.length,
                        itemBuilder: (context, index) {
                          return currencyRowWidget(currencyList[index]);
                        }))
              ]),
            )),
      ),
    );
  }

  Card topCard() {
    return Card(
      elevation: 8,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0.0, 0),
              child: Text(
                'Total Worth',
                style: TextStyle(fontSize: 14.0, color: Colors.black54),
              ),
            ),
          ),
          balanceWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [buyBitcoinButton(), depositButton()],
          ),
        ],
      ),
    );
  }

  Row balanceWidget() {
    return Row(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '₹29,898',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
    );
  }

  Padding infoImageWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('image/coinswitch.jpeg'),
            ),
            borderRadius: BorderRadius.circular(4)),
      ),
    );
  }

  Widget buyBitcoinButton() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: RaisedButton(
        color: Color.fromRGBO(22, 35, 233, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            '₿  BUY BITCOIN',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget depositButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: RaisedButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              color: Color.fromRGBO(22, 35, 233, 1),
            )),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'DEPOSIT INR',
            style: TextStyle(
              color: Color.fromRGBO(22, 35, 233, 1),
            ),
          ),
        ),
      ),
    );
  }

  Widget currencyRowWidget(Currency currency) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Icon(
              currency.icon,
              color: Colors.black54,
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currency.name,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).textTheme.title.color),
                ),
                Text(
                  currency.shortName,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Expanded(child: Container()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "₹${currency.price}",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  currency.percent.toString(),
                  style: TextStyle(
                      fontSize: 14,
                      color: currency.percent > 0 ? Colors.green : Colors.red),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
