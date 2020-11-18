import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/share_qr_code.dart';
import 'package:subscription_qr/icons/diabetes_icon_icons.dart';
import 'package:subscription_qr/icons/insured_icon_icons.dart';
import 'package:subscription_qr/icons/patient_icon_icons.dart';
import 'package:subscription_qr/icons/pharmacy_icon_icons.dart';
import 'package:subscription_qr/icons/share_purple_icon_icons.dart';
import 'package:subscription_qr/icons/woman_icon_icons.dart';

import 'btn_container.dart';
import 'dot_container.dart';

class ContentDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return  Container(
          width: double.infinity,
          //  height: 130.0,
          decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            color: const Color(0xFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(81, 217, 14, 1),
                    radius: 3.0,
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/images/profile_image.jpg'),
                    radius: 18.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'Basma Ali',
                        style: TextStyle(
                          fontSize: 12.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Gilroy-Bold',
                          color: Color.fromRGBO(29, 40, 46, 1),
                        ),
                      ),
                      Text(
                        'Last Visiton 20/1/2019',
                        style: TextStyle(
                          fontSize: 8.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Gilroy-SemiBold',
                          color: Color.fromRGBO(197, 194, 213, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Container(
                    width: 60.0,
                    height: 15.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromRGBO(255, 108, 145, 1),
                      borderRadius:
                      BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Expanded(
                      child: Row(
                        children: [
                          Icon(
                            PatientIcon.patientinfo,
                            size: 10.0,
                            color: Color.fromRGBO(174, 31, 67, 1),
                          ),
                          Expanded(
                            child: Text(
                              '6 Critical Points',
                              style: TextStyle(
                                fontSize: 6.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'Gilroy-Regular',
                                color: Color.fromRGBO(174, 31, 67, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    //color: Colors.red,

                    child: FlatButton(
                        child: Icon(
                          Icons.qr_code_sharp,
                          color: Color.fromRGBO(82, 9, 116, 1),
                          size: 20.0,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              context: context,
                              builder: (builder) {
                                return ShareQrCode();
                              });
                        }),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Expanded(
                    child: Icon(
                      SharePurpleIcon.shared_purple,
                      size: 10.0,
                      color: Color.fromRGBO(82, 9, 116, 1),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Expanded(
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 10.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Gilroy-Bold',
                        color: Color.fromRGBO(82, 9, 116, 1),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DotContainer(
                    color: Color.fromRGBO(82, 9, 116, 1),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BtnContainerWidget(
                      color: Color.fromRGBO(218, 191, 222, 1),
                      text: 'Female',
                      colorText: Color.fromRGBO(82, 9, 116, 1),
                      childIcon: Text(
                        '',
                        style: TextStyle(fontSize: 12.0),
                      )),
                  SizedBox(
                    width: 3.0,
                  ),
                  BtnContainerWidget(
                      color: Color.fromRGBO(255, 223, 231, 1),
                      text: 'Pregnant',
                      colorText: Color.fromRGBO(255, 108, 145, 1),
                      childIcon: Icon(
                        WomanIcon.woman,
                        size: 18.0,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      )),
                  SizedBox(
                    width: 3.0,
                  ),
                  BtnContainerWidget(
                    color: Color.fromRGBO(244, 222, 247, 1),
                    text: 'Years',
                    colorText: Color.fromRGBO(133, 45, 145, 1),
                    childIcon: Text(
                      '30',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Gilroy-Regular',
                          color: Color.fromRGBO(82, 9, 116, 1)),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  BtnContainerWidget(
                    color: Color.fromRGBO(222, 247, 224, 1),
                    text: 'Insured',
                    colorText: Color.fromRGBO(45, 145, 82, 1),
                    childIcon: Icon(
                      InsuredIcon.insured,
                      size: 18.0,
                      color: Color.fromRGBO(45, 145, 82, 1),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  BtnContainerWidget(
                    color: Color.fromRGBO(255, 223, 231, 1),
                    text: 'Diabetic',
                    colorText: Color.fromRGBO(255, 108, 145, 1),
                    childIcon: Icon(
                      DiabetesIcon.diabetes,
                      size: 18.0,
                      color: Color.fromRGBO(255, 108, 145, 1),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  BtnContainerWidget(
                    color: Color.fromRGBO(218, 191, 222, 1),
                    text: 'Share',
                    colorText: Color.fromRGBO(82, 9, 116, 1),
                    childIcon: Icon(
                      SharePurpleIcon.shared_purple,
                      size: 18.0,
                      color: Color.fromRGBO(82, 9, 116, 1),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),

                  BtnContainerWidget(
                    color: Color.fromRGBO(222, 247, 224, 1),
                    text: 'Prescripe',
                    colorText: Color.fromRGBO(82, 9, 116, 1),
                    childIcon: Icon(
                        PharmacyIcon.pharmacy,
                        size: 18.0,
                        color: Color.fromRGBO(82, 9, 116, 1)
                    ),
                  ),
                ],
              )
            ],
          )
      );
  }

}
