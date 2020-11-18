import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/share_qr_code.dart';
import 'package:subscription_qr/Screens/share_qr_code_external.dart';
import 'package:subscription_qr/icons/barcode_icon_icons.dart';
import 'package:subscription_qr/icons/close_icon_icons.dart';

class ShareQrCodePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     // height: double.infinity,
      color: Colors.transparent,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120.0,
              height: 10.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color.fromRGBO(82, 9, 116, 1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
            child: Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: Text(
                    'Share QR code',
                    style: TextStyle(
                      fontSize: 15.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Gilroy-Bold',
                      color: Color.fromRGBO(29, 40, 46, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100.0,
                ),
                Container(
                  width: 22.72,
                  height: 22.72,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Color.fromRGBO(82, 9, 116, 1), width: 1.5),
                  ),
                  child: Icon(CloseIcon.close,
                      size: 12.0, color: Color.fromRGBO(82, 9, 116, 1)),
                  // child: Tab(icon: Icon(MyFlutterApp.cancel_circled),
                ),

              ],
            ),
          ),

          /////////////
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    context: context,
                    builder: (builder) {
                      return ShareQrCode();
                    });
              },
              child: Icon(
                Icons.visibility_off_outlined,
                size: 45.0,
                color: Color.fromRGBO(82, 9, 116, 1),
              )),
          SizedBox(
            height: 5.0,
          ),
          //////////////

          Container(
            width: 290.0,
            height: 150.0,
            decoration: BoxDecoration(
             // color: Colors.white,
              border:
                  Border.all(color: Color.fromRGBO(82, 9, 116, 1), width: 1.0),
              // color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(21),
                topLeft: Radius.circular(21),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(21),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 2.0),
                      child: Icon(
                        Icons.person_outline_sharp,
                        size: 25.0,
                        color: Color.fromRGBO(82, 9, 116, 1),
                      ),
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              'بسمة على حسن السيد',
                              style: TextStyle(
                                fontSize: 10.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'Gilroy-SemiBold',
                                color: Color.fromRGBO(52, 63, 68, 1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0,left: 8.0),
                              child: Text(
                                'basma ali hassan Alsayed',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Gilroy-SemiBold',
                                  color: Color.fromRGBO(52, 63, 68, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        width: 65.0,
                        height: 68.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(82, 9, 116, 1), width: 2.0),
                          // color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Icon(
                          Icons.qr_code_sharp,
                          size: 50.0,
                          color: Color.fromRGBO(82, 9, 116, 1),
                        ),
                      ),
                    ),
                  ],
                ),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 43.0),
                      child: Icon(
                        BarcodeIcon.product_barcode,
                        size: 50.0,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    Icon(
                      BarcodeIcon.product_barcode,
                      size: 50.0,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 3.0),
                      child: Icon(
                        Icons.phone,
                        size: 15.0,
                        color: Color.fromRGBO(0,0,0, 1),
                      ),
                    ),
                    Text(
                      '012365324560',
                      style: TextStyle(
                        fontSize: 10.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Gilroy-SemiBold',
                        color: Color.fromRGBO(52, 63, 68, 1),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'MRN # ( BA10206312)',
                      style: TextStyle(
                        fontSize: 12.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Gilroy-SemiBold',
                        color: Color.fromRGBO(52, 63, 68, 1),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Developer Note: QR Code ( EMR number : & It’s consisting of “Name(initials of 1st& last name)+'
                      'Date of first registration (mm+yy) +National ID/passport (last 4 digits) = 2'
                      ' Ex: Letters + 8 Digits” ex: BA06206312',
                  style: TextStyle(
                    fontSize: 12.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Gilroy-SemiBold',
                    color: Color.fromRGBO(82, 9, 116, 1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Text(
                  'N.B. if the patient entered manually (without ID), the system complete the last 4 digits randomly',
                  style: TextStyle(
                    fontSize: 12.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Gilroy-SemiBold',
                    color: Color.fromRGBO(238, 73, 18, 1),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Text(
              'Share this QR Code with only authorized Care Providers',
              style: TextStyle(
                fontSize: 12.0,
                decoration: TextDecoration.none,
                fontFamily: 'Gilroy-SemiBold',
                color: Color.fromRGBO(29, 40, 46, 1),
              ),
            ),
          ),

          Expanded(
            child: FlatButton(
              child: Text(
                'Share',
                style: TextStyle(
                  fontSize: 15.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Gilroy-SemiBold',
                  color: Color.fromRGBO(82, 9, 116, 1),
                ),
              ),
              onPressed: () {
                //share external
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    context: context,
                    builder: (builder) {
                      return ShareQrCodeExternal();
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
