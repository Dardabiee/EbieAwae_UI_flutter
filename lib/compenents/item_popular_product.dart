
import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/products.dart';
import 'package:shop_app/size_config.dart';

class ItemPopularProduct extends StatelessWidget {
  const ItemPopularProduct({
    super.key, required this.product, required this.press,
  });

  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
       width: 140,
       height: double.infinity,
        child: GestureDetector(
          onTap: press,
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             AspectRatio(
              aspectRatio: 1.05,
               child: Container(
                 width: getPropScreenWidth(140),
                 padding: EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: kSecondaryColor.withOpacity(0.1)
                 ),
                 child: Image.asset(product.images[0]),
               ),
             ),
             const SizedBox(height: 15),
             Text(product.title),
             SizedBox(height: getPropScreenHeight(5),),
             Spacer(),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("\$${product.price}",
                 style: TextStyle(
                   color: kPrimaryColor,
                   fontWeight: FontWeight.w600,
                   fontSize: 18
                  ),
                 ),
                 Container(
                   width: getPropScreenWidth(28),
                   height: getPropScreenHeight(28),
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(
                     color: product.isFavourite == true 
                     ? kPrimaryColor.withOpacity(0.2) 
                     : kSecondaryColor.withOpacity(0.2),
                     shape: BoxShape.circle
                   ),
                   child: Icon(Icons.favorite,
                    color: product.isFavourite == true 
                    ? Colors.red 
                    : kSecondaryColor,
                    size: 13,
                   ),
                 )
               ],
             )
           ],
          ),
        ),
      ),
    );
  }
}


