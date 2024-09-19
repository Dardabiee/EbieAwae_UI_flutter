import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_suffix_icon.dart';
import 'package:shop_app/compenents/error_form.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/compenents/social_media.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/sign_up/compenents/sign_up_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.03,),
            Text("Register Account",
            style: headingStyle
            ),
            const Text('Complete your details or continue \nwith social media',
            textAlign: TextAlign.center,),
            SizedBox(height: SizeConfig.screenHeight * 0.06,),
            SignUpForm(),
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
                SizedBox(height: SizeConfig.screenHeight * 0.06,),
                const Text('By continuing your confirm that you agree \nwith our term and condition',
                textAlign: TextAlign.center,),
                SizedBox(height: SizeConfig.screenHeight * 0.03,),
          ],
        ),
      ),
    );
  }
}


