import 'package:carousel_slider/carousel_slider.dart';
import 'package:cofee_shop/widgets/customoffercard.dart';
import 'package:flutter/material.dart';

class CustomeOfferSlider extends StatefulWidget {
  @override
  _CustomeOfferSliderState createState() => _CustomeOfferSliderState();
}

class _CustomeOfferSliderState extends State<CustomeOfferSlider> {
  int _current = 0;

  // add offer cards from here
  List CardList = [
    CustomOfferCard(
      Imagepath: 'assets/images/offer4in1.jpg',
      OfferTitle: "Fresh Family",
      OfferSubTitile: "4 in 1 Cappuccino Pack",
      Price: '12.00',
    ),
    CustomOfferCard(
      Imagepath: 'assets/images/icecoffeeoffer.jpg',
      OfferTitle: "Large Iced Coffe",
      OfferSubTitile: "with chocolate chip cookies",
      Price: '8.00',
    ),
    CustomOfferCard(
      Imagepath: 'assets/images/breakfirstoffer.jpg',
      OfferTitle: "Litle hungry",
      OfferSubTitile: "milk coffee with chocolate bun",
      Price: '6.00',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        items: CardList.map((carditem) {
          return Builder(builder: (BuildContext Context) {
            return Container(
              child: carditem,
            );
          });
        }).toList(),
        options: CarouselOptions(
          onPageChanged: (index, reson) {
            setState(() {
              _current = index;
            });
          },
          autoPlay: true,
          pauseAutoPlayOnTouch: true,
        ),
      ),
    );
  }
}
