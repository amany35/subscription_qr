import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'btn_scan_widget.dart';

class ContainerWidget extends StatelessWidget{

  final child;

  const ContainerWidget({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: child
    );
  }

}

