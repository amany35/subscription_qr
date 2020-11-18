import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/patient_info.dart';
import 'package:subscription_qr/Screens/patient_info_two.dart';
import 'package:subscription_qr/Screens/safe_area_widget.dart';
import 'package:subscription_qr/Screens/scan_btn.dart';
import 'package:subscription_qr/Screens/show_alert_dialog.dart';
import 'package:subscription_qr/Screens/sliderWidget.dart';

import 'Home.dart';
import 'btn_scan_widget.dart';
import 'containerWidget.dart';
import 'dot_container.dart';

class ScanningTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeAreaWidget(
      body: ContainerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BtnWidget(path: 'assets/images/scanning.png',onPress: (){
              // showAlertDialog(context,PatientInfo(),ScanBtn());
            },),
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
              height: 20.0,
            ),

            SliderWidget(),


          ],
        ),

      ),
      onTap: (){
        showAlertDialog(context,PatientInfoTwo(),ScanBtn(onPress:(){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        }));
      },
    );
  }
}