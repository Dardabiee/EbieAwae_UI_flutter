import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

class ItemButtonProfile extends StatelessWidget {
  const ItemButtonProfile({
    super.key, required this.svgIcon, required this.title, required this.press,
  });
  
  final String svgIcon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20), vertical: getPropScreenWidth(10)),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xfff5f6f9),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          children: [
            SvgPicture.asset(svgIcon, color: kPrimaryColor,),
            SizedBox(width: getPropScreenWidth(15),),
            Text(title, style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.deepPurple
            ),),
            Spacer(),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
      ),
    );
  }
}