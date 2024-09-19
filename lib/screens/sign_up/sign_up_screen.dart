import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/compenents/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up' ;
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}