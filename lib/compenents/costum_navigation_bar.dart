
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/profile/profil.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({
    super.key, required this.menu,
  });

  final MenuState menu;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, HomeScreen.routeName);
          }, icon: SvgPicture.asset("assets/icons/Shop Icon.svg", color: MenuState.home == menu? kPrimaryColor :  inActiveIconColor,)),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg")),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, ProfilScreen.routeName);
          }, icon: SvgPicture.asset("assets/icons/User.svg", color: MenuState.profile  == menu? kPrimaryColor :  inActiveIconColor,)),
        ],
      ),
    );
  }
}