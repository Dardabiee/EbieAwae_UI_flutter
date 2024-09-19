import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_suffix_icon.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/forgot_password/compenent/forgot_password_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(height: SizeConfig.screenHeight * 0.06,),
              const Text('Forgot password',
              style: TextStyle(
                fontSize: 28,
                color:  Colors.black,
                fontWeight:FontWeight.bold
               ),
              ),
              const Text('Please enter your email and we will send \nyou a link to return to your account',
              textAlign: TextAlign.center,),
               SizedBox(height: SizeConfig.screenHeight * 0.06,),
               const ForgotPasswordForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.06,),
                dontHaveAccountText()
          
            ],
          ),
        ),
      ),
    );
  }

  Row dontHaveAccountText() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have any account?"),
                GestureDetector(
                  onTap: (){},
                  child: Text("Sign up", style: TextStyle(
                    color: Colors.blue,
                  ),),
                ),
              ],
            );
  }
}



