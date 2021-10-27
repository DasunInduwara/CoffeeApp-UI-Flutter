import 'package:cofee_shop/styles/style.dart';
import 'package:cofee_shop/widgets/customtext.dart';
import 'package:flutter/material.dart';

class CustomOfferCard extends StatefulWidget {
  @required
  String OfferTitle;
  double TitleFontSize;
  String OfferSubTitile;
  double SubTitleFontSize;
  String Imagepath;
  String Price;

  CustomOfferCard(
      {this.Imagepath = "",
      this.OfferSubTitile = "",
      this.TitleFontSize = 24.0,
      this.SubTitleFontSize = 15.0,
      this.OfferTitle = "",
      this.Price = ""});

  @override
  _CustomOfferCardState createState() => _CustomOfferCardState();
}

class _CustomOfferCardState extends State<CustomOfferCard> {
  String price = "\$";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: cardbackgroundcolor,
        semanticContainer: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.35,
                  margin: EdgeInsets.fromLTRB(8, 15, 8, 0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(this.widget.Imagepath),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                // SizedBox(width: 5.0),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 15, 0, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Offer Title
                      CustomText(
                        text: this.widget.OfferTitle,
                        rowwidth: 120.0,
                        color: whitetextcolor,
                        fontsize: 24.0,
                        fontfamily: 'Roboto',
                        weight: FontWeight.w100,
                      ),
                      SizedBox(height: 10.0),
                      //Offer SubTitle
                      CustomText(
                        fontfamily: 'Roboto',
                        color: textformcolor,
                        fontsize: 15,
                        text: this.widget.OfferSubTitile,
                        rowwidth: 120.0,
                        rowheight: 60.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: RichText(
                    text: TextSpan(
                      text: '\$' + ' ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: customyellowcolor,
                          fontSize: 28),
                      children: <TextSpan>[
                        //offer Price
                        TextSpan(
                            text: this.widget.Price,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whitetextcolor,
                                fontSize: 24)),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/addicon.png"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
