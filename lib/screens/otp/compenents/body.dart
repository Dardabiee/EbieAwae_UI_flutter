import 'package:flutter/material.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/otp/compenents/otp_form.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/theme.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.03,),
            Text("OTP Verification",style: headingStyle ,),
            SizedBox(height: SizeConfig.screenHeight * 0.03,),
            const Text("We sent your code to +62 8973 1288"),
            buildTimer(),
            SizedBox(height: SizeConfig.screenHeight * 0.15,),
            OtpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.1,),
            GestureDetector(
              onTap: (){},
              child: Text("Resent OTP ",style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 16,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This code will expired in"),
              TweenAnimationBuilder(
                tween:Tween(begin: 30.0, end: 0), 
                duration: Duration(seconds: 30), 
               builder: (context, value, child)=> Text("00:${value.toInt()}",
               style: TextStyle(
                color: kPrimaryColor
                  ),
                ),
                onEnd: () {
                  
                },
              ),
            ],
          );
  }
}

