import 'package:flutter/material.dart';
import 'package:shop_app/screens/login_success/compenents/body.dart';

class LoginSuccesScreen extends StatelessWidget {
  static String routeName = '/login_success';
  const LoginSuccesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login success"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Body(),
    );
  }
}