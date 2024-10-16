import 'package:flutter/material.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}){
    if(value.length == 1){
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
              width: getPropScreenWidth(60),
              child:  TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputFormDecoration,
                onChanged: (value) {
                  //we need to store store your value
                  nextField(value: value, focusNode: pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
              width: getPropScreenWidth(60),
              child:  TextFormField(
                focusNode: pin2FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputFormDecoration,
                onChanged: (value) {
                   nextField(value: value, focusNode: pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
              width: getPropScreenWidth(60),
              child:  TextFormField(
                focusNode: pin3FocusNode,
          
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputFormDecoration,
                onChanged: (value) {
                   nextField(value: value, focusNode: pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
              width: getPropScreenWidth(60),
              child:  TextFormField(
                focusNode: pin4FocusNode,
          
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputFormDecoration,
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15,),
          MyDefaultButton(text: "Continue", press:(){

          })
        ],
      )
    );
  }
}