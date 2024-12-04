
import 'package:flutter/material.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/state_managements/cart_provider.dart';
import 'package:provider/provider.dart';

class CartBottomNavigation extends StatelessWidget {
  const CartBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30
        ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: Color(0xffdadada).withOpacity(0.30)
          )
        ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: getPropScreenWidth(40),
              width: getPropScreenWidth(40),
              decoration: BoxDecoration(
                color: Color(0xfff5f6f9),
                borderRadius: BorderRadius.circular(15)
              ),
              child: SvgPicture.asset("assets/icons/receipt.svg"),
            ),
            const Spacer(),
            const Text("Add voucher code"),
            const SizedBox(width: 10,),
            const Icon(Icons.arrow_forward_ios_outlined,
            size: 12,)
          ],
         ),
        SizedBox(height: getPropScreenWidth(20),),
        Consumer<CartProvider>(
          builder: (context, cart, child) {
            return Row(
              children: [
                Text.rich(
                 TextSpan(
                   children: [
                     TextSpan(
                        text: "Total:\n ",
                     ),
                     TextSpan(
                         text: "\$${cart.totalPrice}",
                         style: TextStyle(
                         fontSize: 16,
                     ),
                    ),
                   ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: getPropScreenWidth(150),
                    child: MyDefaultButton(text: "Check out", press: (){
                      cart.clearCart();

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("added to cart")));
                    }))
              ],
            );
          }
        )
        ],
      ),
    );
  }
}