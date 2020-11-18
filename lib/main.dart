import 'package:flutter/material.dart';
import 'package:subscription_qr/Screens/Home.dart';
import 'package:subscription_qr/Screens/scan_qr.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Subscription QR App',
      //ScanQr()
      home: ScanQr(),
    );
  }
}
