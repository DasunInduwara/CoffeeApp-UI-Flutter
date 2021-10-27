import 'package:cofee_shop/styles/style.dart';
import 'package:cofee_shop/widgets/customformfield.dart';
import 'package:cofee_shop/widgets/customofferslider.dart';
import 'package:cofee_shop/widgets/customtext.dart';
import 'package:cofee_shop/widgets/productcard.dart';
import 'package:cofee_shop/widgets/productlist.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171413),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //menu Icon button
                      Container(
                        decoration: BoxDecoration(
                            color: iconcolor,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      //menu Icon button
                      Container(
                        decoration: BoxDecoration(
                            color: iconcolor,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      // Display Text
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomText(
                          fontfamily: 'Roboto',
                          fontStyle: null,
                          color: whitetextcolor,
                          fontsize: 30,
                          text: "Choose the your perfect coffee..",
                          rowwidth: 250.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  // Search Bar
                  CustomFormField(
                    customhintText: "Find Your Coffee",
                    formfeildIcon: Icons.search_sharp,
                  ),
                  SizedBox(height: 10.0),
                  // Special offers text
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomText(
                          fontfamily: 'Roboto',
                          color: whitetextcolor,
                          fontsize: 20,
                          text: "Special offers",
                          rowwidth: null,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  CustomeOfferSlider(),
                  Divider(color: Colors.white54),
                  ProdcutList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
