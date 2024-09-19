import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/complete_screen_profile.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/login_success/login_succes_screen.dart';
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
};