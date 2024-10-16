import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constant.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon, 
    required this.name, 
    required this.press,
  });

  final String icon;
  final String name;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(aspectRatio: 1,
            child: Container(
              width: 55,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)
              ),
              child: SvgPicture.asset(icon),
             ),
            ),
            const SizedBox(height: 5),
            Text(name,
            textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}