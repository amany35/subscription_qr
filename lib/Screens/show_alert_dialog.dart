
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/scan_qr.dart';



void showAlertDialog(BuildContext context,patientInfo,scanBtn) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Stack(
        children: <Widget>[
           ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child:  ScanQr()
          ),
          Center(
            child:  ClipRect(
              child:  BackdropFilter(
                filter:  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child:  Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration:  BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.5)
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      patientInfo,
                      scanBtn,
                    ],
                  )
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}

/////////////////////
/*Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          patientInfo,
          scanBtn,
        ],
      );*/