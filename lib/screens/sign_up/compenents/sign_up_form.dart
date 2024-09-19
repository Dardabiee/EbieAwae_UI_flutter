import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_suffix_icon.dart';
import 'package:shop_app/compenents/error_form.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/complete_profile/complete_screen_profile.dart';
import 'package:shop_app/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  String? email;
  String? password;
  String? confirmedPassword;

  final _formKey = GlobalKey<FormState>(); //untuk menvalidasi data yang ada di form
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            emailFormField(),
            SizedBox(height: getPropScreenHeight(30),),
            passwordFormField(),
            SizedBox(height: getPropScreenHeight(30),),
            passwordConfirmationFormField(),
            SizedBox(height: getPropScreenHeight(20),),
            ErrorForm(errors: errors),
            SizedBox(height: getPropScreenHeight(20),),
            MyDefaultButton(text: 'Continue', press: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
              }

              if(errors.isEmpty){
                Navigator.pushNamed(context, CompleteScreenProfile.routeName);
              }
            })
        
          ],
        ),
      ),
    );
  }
  TextFormField passwordConfirmationFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmedPassword = newValue,
      onChanged:(value) {
        setState(() {
          confirmedPassword = value;
        });
        if(password == value){
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
      },
      validator: (value) {
        if(value!.isEmpty || errors.contains(kMatchPassError)){
          return "";
        }else if(value != password){
         setState(() {
            errors.add(kMatchPassError);
         });
        }
        return null;
      },
      obscureText: true,
      decoration: 
      InputDecoration(
        labelText: "Password Confirmation",
        hintText: "Re-enter Your Password",
        suffixIcon: CostumSuffixIcon(icon:'assets/icons/Lock.svg' ,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }


  TextFormField passwordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged:(value) {
        setState(() {
          password = value;
        });
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
      InputDecoration(
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
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter Your Email",
          suffixIcon: CostumSuffixIcon(icon:'assets/icons/Mail.svg' ,),
          floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}