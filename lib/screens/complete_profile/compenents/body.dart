import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_suffix_icon.dart';
import 'package:shop_app/compenents/error_form.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/complete_profile/compenents/complete_profil.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.03,),
              Text('Complete Profile',
              style: headingStyle,
              ),
              const Text('Complete your data profile',
              textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight * 0.05,),
              CompeleteProfileForm(),
              SizedBox(height: getPropScreenHeight(30),),
              Text("By continuing your confirm that you agree \nwith our Term and Condition. ",
              textAlign: TextAlign.center,)

            ],
          ),
        ),
      )

    );
  }
}
