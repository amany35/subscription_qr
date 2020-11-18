import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget({
    Key key, this.path, this.onPress,
  }) : super(key: key);

  final String path;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: onPress, child: Image.asset(path));
  }
}