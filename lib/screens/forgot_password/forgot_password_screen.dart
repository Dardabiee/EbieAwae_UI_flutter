import 'package:flutter/material.dart';
import 'package:shop_app/screens/forgot_password/compenent/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot_password';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body: Body() ,
    );
  }
}