
import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key, required this.image, required this.category, required this.num0fbrands, required this.press,
  });
 final String image, category, num0fbrands;
 final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: press,
        child: Stack(
          children: [
            Container(
              width: getPropScreenWidth(242),
              height: getPropScreenHeight(100),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image,),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              width: getPropScreenWidth(242),
              height: getPropScreenHeight(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    const Color(0XFF343434).withOpacity(0.4),
                    const Color(0XFF343434).withOpacity(0.15)
                  ]
                )
              ),
            ),
            Positioned(
              left: getPropScreenWidth(15),
              top: getPropScreenWidth(15),
              child: Text.rich( 
                TextSpan(
                  style: TextStyle( color: Colors.white,),
                  children:[
                    TextSpan(text: "$category\n",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getPropScreenWidth(18),
                      fontWeight: FontWeight.bold
                       ),
                    ),
                    TextSpan(
                      text: "$num0fbrands"
                    )
                  ]
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

