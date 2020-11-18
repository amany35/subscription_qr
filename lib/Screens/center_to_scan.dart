import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/containerWidget.dart';
import 'package:subscription_qr/Screens/safe_area_widget.dart';
import 'package:subscription_qr/Screens/scanning.dart';

import 'btn_scan_widget.dart';

class CenterToScan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeAreaWidget(

      body: ContainerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BtnWidget(path: 'assets/images/center_to_scan.png',onPress: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context) => Scanning()));
            },),

          ],
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Scanning()));
      },
    );
  }
}


