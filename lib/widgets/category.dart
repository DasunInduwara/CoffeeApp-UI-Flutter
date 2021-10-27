import 'package:flutter/material.dart';

class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  int _item = 0;

  List CategoryList = [
    Text("data")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, CategoryList) {
      return ListTile(
        title: Text("data"),
      );
    });
  }
}
