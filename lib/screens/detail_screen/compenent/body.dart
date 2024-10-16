import 'package:flutter/material.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/products.dart';
import 'package:shop_app/screens/detail_screen/compenent/color_picker.dart';
import 'package:shop_app/screens/detail_screen/compenent/detail_description.dart';
import 'package:shop_app/screens/detail_screen/compenent/image_detail.dart';
import 'package:shop_app/screens/detail_screen/compenent/rounded_container.dart';
import 'package:shop_app/size_config.dart';
import 'package:readmore/readmore.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageDetail(product: product),
            RoundedContainer(
              child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                  DetailDescription(product: product),
                  SizedBox(height: getPropScreenWidth(20)),
                  ColorPicker(product: product),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                    child: MyDefaultButton(text:"Add to Cart", press: (){}),
                  )
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
