import 'package:cofee_shop/styles/style.dart';
import 'package:cofee_shop/widgets/customtext.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  String productPrice;
  String Title;
  String ImagePath;

  ProductCard({this.productPrice = "", this.Title = "", this.ImagePath = ""});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.47,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Card(
        color: cardbackgroundcolor,
        elevation: 10,
        child: Container(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    print("taped");
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.24,
                  width: MediaQuery.of(context).size.width * 0.47,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3,
                        style: BorderStyle.solid,
                        color: cardbackgroundcolor),
                    image: DecorationImage(
                      image: AssetImage(this.widget.ImagePath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.5,
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: CustomText(
                  text: this.widget.Title,
                  color: whitetextcolor,
                  weight: FontWeight.bold,
                  fontsize: 20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '\$' + ' ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: customyellowcolor,
                            fontSize: 28),
                        children: <TextSpan>[
                          //Price
                          TextSpan(
                              text: this.widget.productPrice,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: whitetextcolor,
                                  fontSize: 24)),
                        ],
                      ),
                    ),
                    // buy btn
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/addicon.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
