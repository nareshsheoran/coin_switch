import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<CarsolInfo> infoList = [];
  List<Widget> widgetList = [];

  @override
  void initState() {
    infoList.add(CarsolInfo(url: 'image/cs1.jpeg'));
    infoList.add(CarsolInfo(url: 'image/cs2.jpeg'));
    infoList.add(CarsolInfo(url: 'image/cs3.jpeg'));
    infoList.add(CarsolInfo(url: 'image/cs4.jpeg'));
    infoList.add(CarsolInfo(url: 'image/cs5.jpeg'));
    infoList.add(CarsolInfo(url: 'image/cs6.jpeg'));

    infoList.forEach((carsolInfo) {
      widgetList.add(getImageWidget(carsolInfo));
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 3.0,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  pageSnapping: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1),
              items: widgetList,
            ),
          )),
    );
  }
}

Widget getImageWidget(CarsolInfo carsolInfo) {
  return Container(
    width: 250,
    height: 125,
    child: Image.asset(
      carsolInfo.url,
      fit: BoxFit.fitWidth,
    ),
  );
}

class CarsolInfo {
  String url;
  Color color;

  CarsolInfo({this.url, this.color});
}
