import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({
    Key key,
    this.icon, this.onTap,
  }) : super(key: key);

  final icon;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72.0,
      height: 71.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(82, 9, 116, 1),
      ),
      child: GestureDetector(
        child: Icon(
          icon,
          color: Color.fromRGBO(255, 255, 255, 1),
          size: 30.0,
        ),
        onTap: onTap,
      ),
    );
  }
}