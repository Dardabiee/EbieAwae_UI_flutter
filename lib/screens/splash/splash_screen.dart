import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/compenent/body.dart';
import 'package:shop_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash_screen"; //alamat untuk Routes
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); //agar bisa manggil getProp
    return Scaffold(
      body: Body(),
    );
  }
}