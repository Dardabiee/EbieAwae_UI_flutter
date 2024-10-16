import 'package:flutter/material.dart';
import 'package:shop_app/screens/otp/compenents/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP verification"),
      ),
      body: Body(),
    );
  }
}