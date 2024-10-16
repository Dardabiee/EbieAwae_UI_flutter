import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/category_data.dart';
import 'package:shop_app/screens/home/compenent/categories_card.dart';
import 'package:shop_app/screens/home/compenent/categories_home.dart';
import 'package:shop_app/screens/home/compenent/discount_banner.dart';
import 'package:shop_app/screens/home/compenent/home_header.dart';
import 'package:shop_app/screens/home/compenent/icon_btn_with_counter.dart';
import 'package:shop_app/screens/home/compenent/popular_products.dart';
import 'package:shop_app/screens/home/compenent/search_field.dart';
import 'package:shop_app/screens/home/compenent/section_title.dart';
import 'package:shop_app/screens/home/compenent/special_offer.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 30),
            DiscountBanner(),
            SizedBox(height: 30),
            Categories(),
            SizedBox(height: 30),
            SpecialOffer(),
            SizedBox(height: 30),
            PopularProducts(),
            SizedBox(height: 20,),
          ], 
        ),
       ),
      );
  }
}

