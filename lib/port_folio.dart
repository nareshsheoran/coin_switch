import 'package:coin_switch/currency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
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
        name: "IOST",
        shortName: "IOST",
        price: 3.01,
        percent: 22.1,
        icon: Icons.location_searching_outlined));
    currencyList.add(Currency(
        name: "Ripple",
        shortName: "XRP",
        price: 86.24,
        percent: -7.5,
        icon: Icons.radio));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LimitOrder(),
      ),
    );
  }

  Column LimitOrder() {
    return Column(
      children: [
        Card(
          elevation: 8,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 40, 8, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Portfolio",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(Icons.account_box),
                  Text(
                    'LIMIT ORDERS',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(22, 35, 233, 1),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current Value'),
                      Text(
                        '₹12,345',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Invested Value'),
                      Text(
                        '₹9,552',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gain/Loss'),
                      Text(
                        '25.6%',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
        Card(
          elevation: 8,
          borderOnForeground: true,
          child: Column(
            children: [
              Container(
                height: 70,
                color: Colors.blueAccent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Icon(Icons.view_agenda_outlined),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total INR Balance'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '₹0',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.youtube_searched_for_outlined),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'DEPOSIT INR',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: currencyList.length,
                itemBuilder: (context, index) {
                  return currencyRowWidget(currencyList[index]);
                }))
      ],
    );
  }
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
                ),
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
