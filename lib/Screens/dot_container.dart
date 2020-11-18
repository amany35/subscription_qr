import 'package:flutter/material.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({
    Key key,
    this.color,
  }) : super(key: key);

  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 15.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(color: Color.fromRGBO(197, 194, 213, 1),width: 3)),
    );
  }
}