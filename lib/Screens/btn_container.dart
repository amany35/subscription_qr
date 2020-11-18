import 'package:flutter/material.dart';

class BtnContainerWidget extends StatelessWidget {
  const BtnContainerWidget({
    Key key,
    this.text,
    this.colorText,
    this.childIcon,
    this.color,
  }) : super(key: key);
  final String text;
  final colorText;
  final childIcon;
  final color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 55.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.more_vert,
                  size: 15,
                  color: Color.fromRGBO(255, 108, 145, 1),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Icon(WomanIcon.woman,size: 18.0,color: Color.fromRGBO(0,0,0,1),)
                childIcon
              ],
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 7.0,
                decoration: TextDecoration.none,
                fontFamily: 'Gilroy-Bold',
                color: colorText,
              ),
            ),
            SizedBox(
              height: 5.0,
            )
          ],
        ),
      ),
    );
  }
}