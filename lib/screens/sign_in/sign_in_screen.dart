import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/compenent/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in"; //alamat untuk routes
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        centerTitle: true,
      ),
      body: Body() ,
    );
  }
}