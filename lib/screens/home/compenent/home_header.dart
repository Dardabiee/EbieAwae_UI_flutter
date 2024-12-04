import 'package:flutter/material.dart';
import 'package:shop_app/model/cart.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/home/compenent/icon_btn_with_counter.dart';
import 'package:shop_app/screens/home/compenent/search_field.dart';
import 'package:shop_app/state_managements/cart_provider.dart';
import 'package:provider/provider.dart';

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
           SeachField(),
          const IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            num0fItems: null,
          ),
             GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              child:  Consumer<CartProvider>(
                builder: (context,cart,child) {
                  return IconBtnWithCounter(
                  svgSrc: "assets/icons/Cart Icon.svg",
                  num0fItems: cart.cartItems.length.toString(),
                  );
                }
              ),
            )
        ],
      ),
    );
  }
}



