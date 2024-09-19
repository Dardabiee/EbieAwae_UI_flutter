

import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

class CostumSuffixIcon extends StatelessWidget {
  const CostumSuffixIcon({
    super.key, 
    required this.icon,
  });
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
      0,
      getPropScreenWidth(20),
      getPropScreenWidth(20),
      getPropScreenWidth(20),
      ),
      child: SvgPicture.asset(icon,
      width: getPropScreenWidth(18)
      ),
    );
  }
}