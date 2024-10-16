import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_suffix_icon.dart';
import 'package:shop_app/compenents/error_form.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/login_success/login_succes_screen.dart';
import 'package:shop_app/size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
       children: [
          //email field
            emailFormField(),
            SizedBox(height: getPropScreenHeight(30),),
            passwordFormField(),
            SizedBox(height: SizeConfig.screenHeight  * 0.06),
            RememberAndForgot(),
            SizedBox(height: getPropScreenHeight(20),),
            ErrorForm(errors: errors,),
            SizedBox(height: getPropScreenHeight(20),),
            MyDefaultButton(text: "Sign In", press: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
              }
              if(errors.isEmpty){
                 Navigator.pushNamed(context, LoginSuccesScreen.routeName);
              }
             
            })
          ],
        ),
     );
  }

  Row  RememberAndForgot() {
    return Row(
                children: [
                  Checkbox(
                    value: remember, 
                    onChanged:(value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                  ),
                  const Text('Remember me'),
                const  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                    },
                    child: const Text('Forgot Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline
                    ),),
                  )
                ],
              );
  }

  TextFormField passwordFormField() {
    return TextFormField(
      onChanged:(value) {
        if(value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if(value.length  >= 8 && errors.contains(kShortPassError)){
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if(value.length < 8 && !errors.contains(kShortPassError)){
          setState(() {
            errors.add(kShortPassError);
          });
        }
      },
      obscureText: true,
      decoration: 
      const InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        suffixIcon: CostumSuffixIcon(icon:'assets/icons/Lock.svg' ,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged:(value) {
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
         setState(() {
           errors.remove(kEmailNullError);
         });
         
        }else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        }else if(!emailValidatorRegExp.hasMatch(value)  && !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: "Email",
          hintText: "Enter Your Email",
          suffixIcon: CostumSuffixIcon(icon:'assets/icons/Mail.svg' ,),
          floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}

