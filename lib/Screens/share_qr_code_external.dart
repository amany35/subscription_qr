import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:subscription_qr/Screens/icon_widget.dart';
import 'package:subscription_qr/Screens/share_qr_code.dart';
import 'package:subscription_qr/icons/close_icon_icons.dart';
import 'package:subscription_qr/icons/face_icon_icons.dart';
import 'package:subscription_qr/icons/g_icon_icons.dart';
import 'package:subscription_qr/icons/linked_icon_icons.dart';
import 'package:subscription_qr/icons/other_icon_icons.dart';
import 'package:subscription_qr/icons/twitter_icon_icons.dart';
import 'package:subscription_qr/icons/what_icon_icons.dart';

class ShareQrCodeExternal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 25.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Gilroy-Bold',
                    color: Color.fromRGBO(29, 40, 46, 1),
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
                  child: GestureDetector(
                    child: Icon(CloseIcon.close,
                        size: 12.0, color: Color.fromRGBO(82, 9, 116, 1)),
                    onTap: (){
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
                  ),
                  // child: Tab(icon: Icon(MyFlutterApp.cancel_circled),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconsWidget(
                  icon: GIcon.search,
                ),
                IconsWidget(
                  icon: FaceIcon.face,
                ),
                IconsWidget(
                  icon: WhatIcon.whatsapp__1_,
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextWidget(
                  text: 'Email',
                ),
                TextWidget(
                  text: 'facebook',
                ),
                TextWidget(
                  text: 'whatsapp',
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconsWidget(
                  icon: LinkedIcon.linkedin,
                ),
                IconsWidget(
                  icon: TwitterIcon.twitter,
                ),
                IconsWidget(
                  icon: OtherIcon.icon_other_26,
                  onTap: (){
                    Navigator.pop(context);
                    Share.share('Download App and Enjoy');
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextWidget(
                  text: 'Linked in',
                ),
                TextWidget(
                  text: 'twitter',
                ),
                TextWidget(
                  text: 'Other',
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Color.fromRGBO(195, 196, 197,1)
                    ),
                    color: Color.fromRGBO(255,255,255, 1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'https://youtu.be/IWHmQUJZOhg',
                          style: TextStyle(
                            fontSize: 11.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Gilroy-Medium',
                            color: Color.fromRGBO(29, 40, 46, 1),
                          ),
                        ),
                      ),
                      FlatButton(onPressed: (){}, child:Text(
                        'COPY',
                        style: TextStyle(
                          fontSize: 11.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Gilroy-Bold',
                          color: Color.fromRGBO(29, 40, 46, 1),
                        ),
                      ), )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15.0,
        decoration: TextDecoration.none,
        fontFamily: 'Gilroy-Medium',
        color: Color.fromRGBO(29, 40, 46, 1),
      ),
    );
  }
}


