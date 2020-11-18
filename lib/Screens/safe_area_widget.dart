import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/scanning.dart';
import 'package:subscription_qr/Screens/sliderWidget.dart';

import 'barcode_scan.dart';
import 'btn_scan_widget.dart';
import 'center_to_scan.dart';
import 'containerWidget.dart';

class SafeAreaWidget extends StatelessWidget{
  final body;
  final onTap;

  const SafeAreaWidget({Key key, this.body, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromRGBO(52, 63, 68, 1),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 240.0,
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        bottomSheet: BottomAppBar(
          child: Container(
            child: Container(
              height: 100.0,
              color: Color.fromRGBO(52, 63, 68, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.photo_library_rounded,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            child: Icon(
                              Icons.qr_code_sharp,
                              size: 30.0,
                              color: Color.fromRGBO(82, 9, 116, 1),
                            ),
                            onTap: onTap,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.qr_code_scanner_sharp,
                        size: 30.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'ID Scan',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(146, 140, 180, 1)),
                      ),
                      Text(
                        'Specialties',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(146, 140, 180, 1)),
                      ),
                      Text(
                        'Single Files',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(146, 140, 180, 1)),
                      ),
                      Text(
                        'Multiple Files',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(146, 140, 180, 1)),
                      ),
                      Text(
                        'URL',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(146, 140, 180, 1)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        body: body,
      ),
    );
  }

}