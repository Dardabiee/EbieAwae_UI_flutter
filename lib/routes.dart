import 'package:flutter/material.dart';
import 'package:shop_app/model/products.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/complete_profile/complete_screen_profile.dart';
import 'package:shop_app/screens/detail_screen/detail_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_succes_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/profil.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccesScreen.routeName: (context) => const LoginSuccesScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteScreenProfile.routeName: (context) => const CompleteScreenProfile(),
  OtpScreen.routeName: (context) => const  OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailScreen.routeName: (context){
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    return DetailScreen(product:  product);
  },
  CartScreen.routeName: (context) => const CartScreen(),
  ProfilScreen.routeName: (context) => const ProfilScreen(),
};