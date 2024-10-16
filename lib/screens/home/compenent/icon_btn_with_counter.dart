import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    super.key, required this.svgSrc, required this.num0fItems
  });
  final String svgSrc;
  final String? num0fItems;
  // final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(getPropScreenWidth(12)),
          height: getPropScreenHeight(46),
          width: getPropScreenWidth(46),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset(svgSrc),
        ),
        if(num0fItems != null && num0fItems != "0")
        Positioned(
          top: -3,
          right: 0,
          child: Container(
            width: getPropScreenWidth(16),
            height: getPropScreenHeight(16),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(width: 1.5, color: Colors.white)
            ),
            child: Center(
              child: Text("${num0fItems}",style: TextStyle(
                fontSize: 10,
                height: 1,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),)
            ),
          ),
        )
      ],
    );
  }
}