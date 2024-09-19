import 'package:flutter/material.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04,),
          Image.asset("assets/images/success.png"),
          SizedBox(height: SizeConfig.screenHeight * 0.08,),
          Text('Login Success',
          style: TextStyle(
            fontSize: getPropScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black
           ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: MyDefaultButton(text: "Back To Home", press: (){
              Navigator.pop(context);
            }),
          ),
          Spacer()

        ],
      ),
    );
  }
}