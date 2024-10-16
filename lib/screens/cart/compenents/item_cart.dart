
import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/cart.dart';
import 'package:shop_app/size_config.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({
    super.key, required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       SizedBox(
        width: 88,
         child: AspectRatio(
          aspectRatio: 0.88,
           child: Container(
             width: getPropScreenWidth(140),
             padding: const EdgeInsets.all(20),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: kSecondaryColor.withOpacity(0.1)
             ),
             child: Image.asset(cart.product.images[0]),
           ),
         ),
       ),
       SizedBox(width: getPropScreenHeight(20),),
      Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(cart.product.title),
        SizedBox(height: getPropScreenHeight(10)),
        Text.rich(
          TextSpan(
    children: [
      TextSpan(
        text: "\$ ${cart.product.price}",
        style: TextStyle(
          fontSize: 14,
          color: kPrimaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      TextSpan(
        text: " x${cart.num0fItems}",
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    ],
          ),
        ),
      ],
    )
    
     ],
    );
  }
}