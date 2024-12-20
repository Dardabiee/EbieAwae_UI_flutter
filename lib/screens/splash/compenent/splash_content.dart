import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, 
    required this.text, required this.image,
  });

  final String text, image;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const Spacer(),
        Text('EbieAwae',
        style:  TextStyle(
          fontSize: getPropScreenWidth(36),
          color: kPrimaryColor,
          fontWeight: FontWeight.bold
        ),),
        Text( text, 
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: getPropScreenWidth(14),
          color: kSecondaryColor
         ),
        ),
        const Spacer(
          flex:2
        ),
        Image.asset(image,
        width: getPropScreenWidth(265),
        height: getPropScreenHeight(235),
        )
      ],
    );
  }
}