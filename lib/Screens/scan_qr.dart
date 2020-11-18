import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/safe_area_widget.dart';
import 'package:subscription_qr/Screens/barcode_scan.dart';
import 'package:subscription_qr/Screens/containerWidget.dart';
import 'package:subscription_qr/Screens/scanning.dart';
import 'package:subscription_qr/Screens/sliderWidget.dart';

import 'btn_scan_widget.dart';
import 'center_to_scan.dart';

class ScanQr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeAreaWidget(


      body: ContainerWidget(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BtnWidget(path: 'assets/images/qr.png', onPress: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CenterToScan()));
        },),
        BtnWidget(path: 'assets/images/barcode.png', onPress: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BarCodeScan()));
        }),
        SizedBox(
          height: 30.0,
        ),
        SliderWidget(),
      ],
    ),),);
  }
}
