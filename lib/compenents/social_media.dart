import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/state_managements/theme_provider.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    super.key, 
    required this.icon, required this.press,
  });
  final String icon;
  final VoidCallback press;
  
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return GestureDetector(
      onTap: press,
          child: Container(
            padding: EdgeInsets.all(getPropScreenWidth(12)),
            height: getPropScreenHeight(40),
            width: getPropScreenWidth(40),
            margin: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
            decoration: BoxDecoration(
             color: themeProvider.isDarkMode ? Colors.black : Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(icon),
      ),
    );
  }
}
