import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_navigation_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/home/compenent/body.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: HomeBottomNavigation(menu: MenuState.home,),
    );
  }
}
