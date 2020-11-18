import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/scan_qr.dart';

class DoneScan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Padding(
         padding: const EdgeInsets.only(top: 100.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Container(
               width: 374.0,
               height: 55.0,
               decoration: BoxDecoration(
                 color: Color.fromRGBO(82, 9, 116, 1),
                 border: Border.all(
                     color: Color.fromRGBO(255, 255, 255, 1), width: 1.0),
                 borderRadius: BorderRadius.circular(20.0),
               ),
               child: FlatButton(
                 child: Text(
                   'Access Has been Requested !!',
                   style: TextStyle(
                     fontSize: 15.0,
                     decoration: TextDecoration.none,
                     fontFamily: 'Gilroy-Medium',
                     color: Color.fromRGBO(255, 255, 255, 1),
                   ),
                 ),
                 onPressed: (){

                 },
               ),
             ),
             SizedBox(
               height: 100.0,
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
                   'Back',
                   style: TextStyle(
                     fontSize: 20.0,
                     decoration: TextDecoration.none,
                     fontFamily: 'Gilroy-SemiBold',
                     color: Color.fromRGBO(82, 9, 116, 1),
                   ),
                 ),
                 onPressed: (){

                   Navigator.push(context, MaterialPageRoute(builder: (context) => ScanQr()));

                   //////////////////////////
                 },
               ),
             ),
           ],
         ));
  }

}