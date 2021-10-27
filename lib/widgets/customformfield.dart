import 'package:cofee_shop/styles/style.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  String customhintText;
  IconData? formfeildIcon;

  CustomFormField({this.customhintText = "",this.formfeildIcon});
  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
      decoration: InputDecoration(
        hintText: this.widget.customhintText,
        hintStyle: TextStyle(color: textformcolor),
        prefixIcon: Icon(
          this.widget.formfeildIcon,
          color: textformcolor,
        ),
        fillColor: Color(0xFF2B2E46),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    ));
  }
}
