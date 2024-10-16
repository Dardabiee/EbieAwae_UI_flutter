import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/compenent/body.dart';
import 'package:shop_app/screens/home/compenent/section_title.dart';
import 'package:shop_app/screens/home/compenent/special_offers_content.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(title: 'Special For You',),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                SpecialOffers(image: 'assets/images/Image Banner 2.png', category: 'Smartphone', num0fbrands:"18 brands", press: () {},),
                SpecialOffers(image: 'assets/images/Image Banner 3.png', category: 'Fashion', num0fbrands:"21 brands", press: () {},)
              ],
            ),
          ),
        )
      ],
    );
  }
}