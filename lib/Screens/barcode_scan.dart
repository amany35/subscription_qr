import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/containerWidget.dart';
import 'package:subscription_qr/Screens/patient_info.dart';
import 'package:subscription_qr/Screens/safe_area_widget.dart';
import 'package:subscription_qr/Screens/scan_btn.dart';
import 'package:subscription_qr/Screens/scan_error.dart';

import 'package:subscription_qr/Screens/show_alert_dialog.dart';
import 'package:subscription_qr/Screens/sliderWidget.dart';

import 'btn_scan_widget.dart';
import 'dot_container.dart';

class BarCodeScan extends StatefulWidget {
  @override
  _BarCodeScanState createState() => _BarCodeScanState();
}

class _BarCodeScanState extends State<BarCodeScan> {

  @override
  Widget build(BuildContext context) {
    return SafeAreaWidget(
      body: ContainerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///////////////////////////////////////

            BtnWidget(
              path: 'assets/images/barcode.png',
              onPress: () {
               // showAlertDialog(context,PatientInfo(),ScanBtn());
              },
            ),
            SizedBox(
              height: 200.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotContainer(
                  color: Color.fromRGBO(82, 9, 116, 1),
                ),
                DotContainer(),
                DotContainer(),
              ],
            ),
            Text(
              'Scanning.....',
              style: TextStyle(
                fontSize: 15.0,
                decoration: TextDecoration.none,
                fontFamily: 'Gilroy-SemiBold',
                color: Color.fromRGBO(82, 9, 116, 1),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            SliderWidget(),
          ],
        ),
      ),
      onTap: (){
        showAlertDialog(context,PatientInfo(),ScanBtn(
          onPress: (){
            showAlertDialog(context,PatientInfo(),ScanError());
          },
        ));
      },
    );
  }

}


