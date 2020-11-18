import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/container_btn.dart';
import 'package:subscription_qr/Screens/patient_info.dart';
import 'package:subscription_qr/Screens/scan_error.dart';
import 'package:subscription_qr/Screens/scan_qr.dart';
import 'package:subscription_qr/Screens/scanning.dart';
import 'package:subscription_qr/Screens/scanning_two.dart';
import 'package:subscription_qr/Screens/show_alert_dialog.dart';

class ScanBtn extends StatelessWidget {
  final onPress;

  const ScanBtn({Key key, this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ContainerBtn(
              text: 'Looks Good!',
              onPress: onPress,
              //  showAlertDialog(context, PatientInfo(), ScanError());
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ScanQr()));

                        //////////////////////////
                      },
                    )),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScanningTwo()));
                  },
                  child: Icon(
                    Icons.add,
                    color: Color.fromRGBO(82, 9, 116, 1),
                  ),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ],
        ));
  }
}
