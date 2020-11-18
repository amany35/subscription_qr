import 'package:flutter/material.dart';

class ContainerBtn extends StatelessWidget{

  final String text;
  final onPress;

  const ContainerBtn({Key key, this.text, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374.0,
      height: 55.0,
      decoration: BoxDecoration(
        color: Color.fromRGBO(82, 9, 116, 1),
        border: Border.all(
            color: Color.fromRGBO(255, 255, 255, 1), width: 1.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            decoration: TextDecoration.none,
            fontFamily: 'Gilroy-SemiBold',
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        onPressed: onPress
      ),
    );
  }

}