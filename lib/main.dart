import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(),
     initialRoute: SplashScreen.routeName,
     debugShowCheckedModeBanner: false,
     routes: routes,
    );
  }

  

}

