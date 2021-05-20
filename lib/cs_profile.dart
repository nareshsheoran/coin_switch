import 'package:coin_switch/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Currency> currencyList = [];

  @override
  void initState() {
    initCurrency();
    super.initState();
  }

  void initCurrency() {
    currencyList.add(Currency(
        name: "User Verification",
        shortName: "Complete your KYC to buy, sell and withdraw",
        icon: Icons.info));
    currencyList.add(Currency(
        name: "Bank Details",
        shortName:
            "This account is used to facilitate all your deposit and withdrawals",
        icon: Icons.info));
    currencyList.add(Currency(
        name: "History",
        shortName: "All your transactions on CoinSwitch Kuber",
        icon: Icons.icecream));
    currencyList.add(Currency(
        name: "Redeeem Gift Voucher",
        shortName: "Got a voucher? Redeem here",
        icon: Icons.bathtub));
    currencyList.add(Currency(
        name: "Help & Support",
        shortName: "Create a ticket and we will contact you",
        icon: Icons.location_searching_outlined));
    currencyList.add(Currency(
        name: "Rate Us",
        shortName: "Tell us what you think",
        icon: Icons.radio));
    currencyList.add(Currency(
        name: "About CoinSwitch", shortName: "v2.6.0-v17", icon: Icons.radio));
    currencyList
        .add(Currency(name: "Logout", shortName: "Logout", icon: Icons.radio));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 50, 8, 0),
        child: Column(
          children: [
            Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 56.0,
                    ),
                    SizedBox(height: 4),
                    Text('KYC Verified'),
                    SizedBox(height: 12),
                    Text(
                      'Naresh Sheoran',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 4),
                    Text('7027768268'),
                  ],
                ),
              ]),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: currencyList.length,
                    itemBuilder: (context, index) {
                      return currencyRowWidget(currencyList[index]);
                    }))
          ],
        ),
      ),
    );
  }
}

Widget currencyRowWidget(Currency currency) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
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
          Expanded(
            child: Column(
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
                  overflow: TextOverflow.visible,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
