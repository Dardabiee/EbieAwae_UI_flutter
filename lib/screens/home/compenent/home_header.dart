import 'package:flutter/material.dart';
import 'package:shop_app/model/cart.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/home/compenent/icon_btn_with_counter.dart';
import 'package:shop_app/screens/home/compenent/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SeachField(),
          const IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            num0fItems: null,
          ),
             GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              child:  IconBtnWithCounter(
              svgSrc: "assets/icons/Cart Icon.svg",
              num0fItems: listCart.length.toString(),
              ),
            )
        ],
      ),
    );
  }
}



