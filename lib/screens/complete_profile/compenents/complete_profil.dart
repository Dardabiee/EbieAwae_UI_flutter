import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_suffix_icon.dart';
import 'package:shop_app/compenents/error_form.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/size_config.dart';

class CompeleteProfileForm extends StatefulWidget {
  const CompeleteProfileForm({super.key});

  @override
  State<CompeleteProfileForm> createState() => _CompeleteProfileFormState();
}

class _CompeleteProfileFormState extends State<CompeleteProfileForm> {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;
  final _formKey = GlobalKey<FormState>(); //untuk menvalidasi data yang ada di form
  final List<String> errors = [];

  void addError({required String error}){
    if(!errors.contains(error))
    setState(() {
      errors.add(error);
    });
  }

  void removeError({required String error}) {
    if(errors.contains(error))
    setState(() {
      errors.remove(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
      children: [
        buildFirstNameFormField(),
        SizedBox(height: getPropScreenHeight(30)),
        buildLastNameFormField(),
        SizedBox(height: getPropScreenHeight(30)),
        buildPhoneNumberFormField(),
        SizedBox(height: getPropScreenHeight(30)),
        buildAddressFormField(),
        ErrorForm(errors: errors),
        SizedBox(height: getPropScreenHeight(40)),
        MyDefaultButton(text: "Continue", press: (){
          if(_formKey.currentState!.validate()){
            // go to OTP
            Navigator.pushNamed(context, OtpScreen.routeName);
          }
        })
      ],
    ));
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
    onSaved: (newValue) => address = newValue,
    onChanged:(value) {
      if(value.isNotEmpty){
        removeError(error: kAddressNullError);
      }
      return null;
    },
    validator: (value) {
      if(value!.isEmpty){
        addError(error: kAddressNullError);
        return "";
      }
      return null;
    },
    decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter Your address",
        suffixIcon: CostumSuffixIcon(icon:'assets/icons/Location point.svg' ,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
    keyboardType: TextInputType.number,
    onSaved: (newValue) => phoneNumber = newValue,
    onChanged:(value) {
      if(value.isNotEmpty){
        removeError(error: kPhoneNumberNullError);
      }
      return null;
    },
    validator: (value) {
      if(value!.isEmpty){
        addError(error: kPhoneNumberNullError);
        return "";
      }
      return null;
    },
    decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter Your Phone number",
        suffixIcon: CostumSuffixIcon(icon:'assets/icons/Phone.svg' ,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
    onSaved: (newValue) => lastName = newValue,  
    decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter Your Last name",
        suffixIcon: CostumSuffixIcon(icon:'assets/icons/User.svg' ,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
    onSaved: (newValue) => firstName = newValue,
    onChanged:(value) {
      if(value.isNotEmpty){
        removeError(error: kNameNullError);
      }
      return null;
    },
    validator: (value) {
      if(value!.isEmpty){
        addError(error: kNameNullError);
        return "";
      }
      return null;
    },
    decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter Your First name",
        suffixIcon: CostumSuffixIcon(icon:'assets/icons/User.svg' ,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
  }
}