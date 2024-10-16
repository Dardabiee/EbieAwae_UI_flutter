import 'package:flutter/material.dart';
import 'package:shop_app/compenents/item_popular_product.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/products.dart';
import 'package:shop_app/screens/detail_screen/detail_screen.dart';
import 'package:shop_app/screens/home/compenent/section_title.dart';
import 'package:shop_app/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
           child: SectionTitle(title: 'Popular Products',),
        ),
         const SizedBox(height: 20),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: SizedBox(
            height: getPropScreenWidth(220),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Row(
                 children: List.generate(demoProducts.length, (index) {
                  final Product product = demoProducts[index];
                  return ItemPopularProduct(product: demoProducts[index], press: () => Navigator.pushNamed(context, DetailScreen.routeName,
                  arguments: product));
                 }),
               ),
             ),
           ),
         )
      ],
    );
  }
}
