import 'package:flutter/material.dart';

import 'productcard.dart';

class ProdcutList extends StatefulWidget {
  @override
  _ProdcutListState createState() => _ProdcutListState();
}

class _ProdcutListState extends State<ProdcutList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductCard(
              ImagePath: "assets/images/coffee1.jpg",
              Title: "Espresso Cappuccino",
              productPrice: "10",
            ),
            ProductCard(
              ImagePath: "assets/images/coffee1.jpg",
              Title: "Espresso Cappuccino",
              productPrice: "10",
            ),
          ],
        )
      ],
    );
  }
}
