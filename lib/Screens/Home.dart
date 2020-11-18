import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/container_btn.dart';
import 'package:subscription_qr/Screens/scan_error.dart';
import 'package:subscription_qr/Screens/scan_qr.dart';
import 'file:///C:/Users/pc/Desktop/intership/subscription_qr/lib/icons/close_icon_icons.dart';
import 'package:subscription_qr/Screens/share_qr_code.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
              child: Icon(
                Icons.qr_code_sharp,
                color: Color.fromRGBO(82, 9, 116, 1),
                size: 100.0,
              ),
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    context: context,
                    builder: (builder) {
                      return ShareQrCode();
                    });
              }),
          SizedBox(
            height: 200.0,
          ),
          ContainerBtn(
            text: 'Scan QR or BC',
            onPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ScanQr()));
            },
          )
        ],
      ),
    );
  }
}
