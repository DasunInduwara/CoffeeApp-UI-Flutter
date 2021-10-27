import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  String text;
  double? fontsize;
  Color? color;
  String fontfamily;
  double? rowwidth;
  double? rowheight;
  FontStyle? fontStyle;
  FontWeight? weight;

  CustomText({
    this.text = "",
    this.fontsize,
    this.color,
    this.fontfamily = "",
    this.fontStyle,
    this.weight,
    this.rowwidth,
    this.rowheight,
  });

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.widget.rowwidth,
      height: this.widget.rowheight,
      child: Text(this.widget.text,
          style: TextStyle(
            color: this.widget.color,
            fontFamily: this.widget.fontfamily,
            fontStyle: this.widget.fontStyle,
            fontSize: this.widget.fontsize,
            fontWeight: this.widget.weight,
          )),
    );
  }
}
