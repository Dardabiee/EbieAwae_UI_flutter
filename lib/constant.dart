import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryColor = Color(0xffff7643);
const kPrimaryLightColor = Color(0xffffecdf);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xffffa53e),
    Color(0xffff7643),
  ]
);

  const kSecondaryColor = Color(0xff979797);
  const inActiveIconColor = Color(0xffb6b6b6);
  const kTextColor = Color(0xff757575);
  const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
fontSize: getPropScreenWidth(28),
fontWeight: FontWeight.bold,
color: Colors.black,
height: 1.5
);
  // Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";

// complete profile error
const String kNameNullError = "Please Enter Your Name";
const String kPhoneNumberNullError = "Please Enter Your Phone Number";
const String kAddressNullError = "Please Enter Your Address";

// 
final otpInputFormDecoration = InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  vertical: getPropScreenWidth(15)
                ),
              enabledBorder: outlineInputBorder(),
              focusedBorder: outlineInputBorder(),
              border: outlineInputBorder(),
              );

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: kTextColor)
              );
}

const defaultDuration =  Duration(milliseconds: 250);

TextStyle SeeMoreStyle = TextStyle(
  fontSize: getPropScreenWidth(16),
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor
);