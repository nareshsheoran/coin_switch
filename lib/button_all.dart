import 'package:coin_switch/currency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllMarket extends StatefulWidget {
  const AllMarket({Key key}) : super(key: key);

  @override
  _AllMarketState createState() => _AllMarketState();
}

class _AllMarketState extends State<AllMarket> {
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
          body: Expanded(
              child: ListView.builder(
                  itemCount: currencyList.length,
                  itemBuilder: (context, index) {
                    return currencyRowWidget(currencyList[index]);
                  }))),
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
