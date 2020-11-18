 import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/Home.dart';
import 'package:subscription_qr/Screens/share_qr_code_external.dart';
import 'package:subscription_qr/Screens/share_qr_code_preview.dart';
import 'package:subscription_qr/icons/close_icon_icons.dart';

class ShareQrCode extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return  Container(
        height: 350.0,
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
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 140.0),
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
                          color: Color.fromRGBO(82, 9, 116, 1),
                          width: 1.5),
                    ),
                    child: GestureDetector(

                      child: Icon(CloseIcon.close,
                          size: 12.0,
                          color: Color.fromRGBO(82, 9, 116, 1)),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                    ),
                    // child: Tab(icon: Icon(MyFlutterApp.cancel_circled),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 125.0),
              child: Row(
                children: [
                  Container(
                    width: 140.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(82, 9, 116, 1),
                          width: 2.0),
                      // color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Icon(Icons.qr_code_sharp,
                            color: Color.fromRGBO(197, 194, 213,1),size: 120.0,),
                        ),
                        Center(
                          child: FlatButton(
                            child: Icon(Icons.share_outlined,size: 80.0,
                              color: Color.fromRGBO(82, 9, 116,1),)
                            ,
                            onPressed: (){
                              ////external
                              Navigator.pop(context);
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

                  ),
                  FlatButton(
                      onPressed: () {
                        //print('amany');
                        //preview
                        Navigator.pop(context);
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            context: context,
                            builder: (builder) {
                              return ShareQrCodePreview();
                            });
                      },
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        size: 45.0,
                        color: Color.fromRGBO(82, 9, 116, 1),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Share this QR Code with only authorized Care Providers',
              style: TextStyle(
                fontSize: 12.0,
                decoration: TextDecoration.none,
                fontFamily: 'Gilroy-SemiBold',
                color: Color.fromRGBO(29, 40, 46, 1),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
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
                onPressed: (){
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