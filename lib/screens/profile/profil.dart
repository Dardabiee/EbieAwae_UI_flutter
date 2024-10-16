import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_navigation_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/profile/compenent/body.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(),
      bottomNavigationBar: HomeBottomNavigation(menu: MenuState.profile),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
    leading: IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
    title: Text('Profile',style: Theme.of(context).textTheme.bodyLarge,),
    centerTitle: false,
  );
  }
}