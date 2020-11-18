import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/done_scan.dart';
import 'package:subscription_qr/Screens/dot_container.dart';
import 'package:subscription_qr/Screens/patient_info.dart';
import 'package:subscription_qr/Screens/scan_btn.dart';
import 'package:subscription_qr/Screens/show_alert_dialog.dart';
import 'package:subscription_qr/icons/doc_icon_icons.dart';

import 'package:subscription_qr/icons/intervision_icon_icons.dart';
import 'package:subscription_qr/icons/patient_icon_icons.dart';
import 'package:subscription_qr/icons/refer_icon_icons.dart';
import 'package:subscription_qr/icons/report_icon_icons.dart';
import 'package:subscription_qr/icons/steth_icon_icons.dart';


class ScanError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ContainerWidgetDialog(icon: PatientIcon.patientinfo,),
            ContainerWidgetDialog(icon: StethIcon.stethoscope__1_,),
            ContainerWidgetDialog(icon: DocIcon.doctor__4_,),
            ColorFiltered(
              colorFilter:
              ColorFilter.mode(Colors.grey, BlendMode.modulate),
              child: ContainerWidgetDialog(icon: ReferIcon.referral,)
            ),
            ColorFiltered(
                colorFilter:
                ColorFilter.mode(Colors.grey, BlendMode.modulate),
                child: ContainerWidgetDialog(icon: IntervisionIcon.intervention,),
            ),
            ColorFiltered(
                colorFilter:
                ColorFilter.mode(Colors.grey, BlendMode.modulate),
                child:  ContainerWidgetDialog(icon: ReportIcon.report,),
            ),


          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DotContainer(
              color: Color.fromRGBO(82, 9, 116, 1),
            ),
            DotContainer(
              color: Color.fromRGBO(82, 9, 116, 1),
            ),
            DotContainer(
              color: Color.fromRGBO(82, 9, 116, 1),
            ),
            buildContainer(),
            buildContainer(),
            buildContainer()
          ],
        ),
        Container(
          width: 380.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: Color.fromRGBO(248, 32, 32, 1),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Center(
            child: Text(
              'Please Make sure to have required permission !!',
              style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Gilroy-Medium',
                  decoration: TextDecoration.none,
                  color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 374.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(238, 0, 0, 1),
                    border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 1), width: 1.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: FlatButton(
                    child: Text(
                      'Request Access !!',
                      style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Gilroy-SemiBold',
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    onPressed: () {
                      ////////////////////////////////////////
                      showAlertDialog(context,PatientInfo(),DoneScan());
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 187.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                        color: Color.fromRGBO(82, 9, 116, 1), width: 1.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: FlatButton(
                    child: Text(
                      'Re-Scan',
                      style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Gilroy-SemiBold',
                        color: Color.fromRGBO(82, 9, 116, 1),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                      showAlertDialog(context,PatientInfo(),ScanBtn());
                      //////////////////////////
                    },
                  ),
                ),
              ],
            ))
      ],
    );
  }

  Container buildContainer() {
    return Container(
      width: 15.0,
      height: 15.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(255,255,255, 1),
          border: Border.all(color: Color.fromRGBO(82, 9, 116, 1))),
    );
  }
}

class ContainerWidgetDialog extends StatelessWidget {
  const ContainerWidgetDialog({
    Key key, this.icon,
  }) : super(key: key);

  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Color.fromRGBO(85, 24, 114, 1),
        //borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(5.0),
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
            // Radius.circular(15.0)
          ),
        ),
        child: Icon(icon,color: Colors.black,size: 20.0,),
      ),
    );
  }
}
