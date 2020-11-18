import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/content_custom_dialog.dart';
import 'package:subscription_qr/Screens/share_qr_code.dart';
import 'package:subscription_qr/icons/diabetes_icon_icons.dart';
import 'package:subscription_qr/icons/insured_icon_icons.dart';
import 'package:subscription_qr/icons/patient_icon_icons.dart';
import 'package:subscription_qr/icons/pharmacy_icon_icons.dart';
import 'package:subscription_qr/icons/share_purple_icon_icons.dart';
import 'package:subscription_qr/icons/woman_icon_icons.dart';

import 'btn_container.dart';
import 'custom_alert_dailog.dart';
import 'dot_container.dart';

class PatientInfoTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

    CustomAlertDialog(
    content: ContentDialog()),

        CustomAlertDialog(
          content: ContentDialog(),
        ),
      ],
    );
  }

}