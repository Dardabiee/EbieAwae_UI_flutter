import 'package:flutter/material.dart';
import 'package:shop_app/compenents/social_media.dart';
// import 'package:shop_app/compenents/costum_suffix_icon.dart';
// import 'package:shop_app/compenents/my_default_button.dart';
// import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/sign_in/compenent/sign_in_form.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
   bool remember = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.06,
                child: Text('Welcome Back',
                style: TextStyle(
                  fontSize: getPropScreenWidth(28),
                  fontWeight: FontWeight.bold,
                 ),
                ),
              ),
              const Text('Sign in with your email and password \nor continue with social media.',
              textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight  * 0.06,
              ),
              const SignInForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.06,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaIcon(
                    icon: 'assets/icons/google-icon.svg',
                    press: (){},
                  ),
                  SocialMediaIcon(
                    icon: 'assets/icons/facebook-2.svg',
                    press: (){},
                  ),
                  SocialMediaIcon(
                    icon: 'assets/icons/twitter.svg',
                    press: (){},
                  ),
                ],
              ),
              SizedBox(height: getPropScreenHeight(10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have any account?"),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                    child: const Text("Sign up", style: TextStyle(
                      color: Colors.blue,
                    ),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}


