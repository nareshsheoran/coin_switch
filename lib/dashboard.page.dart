import 'package:coin_switch/cs_profile.dart';
import 'package:coin_switch/home_page.dart';
import 'package:coin_switch/market_rate.dart';
import 'package:coin_switch/port_folio.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TickerProviderStateMixin {
  MotionTabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        MotionTabController(initialIndex: 0, vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MotionTabBar(
          labels: ["HOME", "PORTFOLIO", "MARKET", "PROFILE"],
          initialSelectedTab: "HOME",
          tabIconColor: Colors.grey,
          tabSelectedColor: Color.fromRGBO(22, 35, 233, 1),
          onTabItemSelected: (int value) {
            print(value);
            setState(() {
              _tabController.index = value;
            });
          },
          icons: [
            Icons.home,
            Icons.bar_chart_outlined,
            Icons.add_box_outlined,
            Icons.account_circle_outlined,
          ],
          textStyle: TextStyle(color: Colors.red),
        ),
        body: MotionTabBarView(
          controller: _tabController,
          children: <Widget>[
            HomePage(),
            Portfolio(),
            Market(),
            Profile(),
          ],
        ));
  }
}
