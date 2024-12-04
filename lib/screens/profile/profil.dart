import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_navigation_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/profile/compenent/body.dart';
import 'package:shop_app/state_managements/theme_provider.dart';
import 'package:provider/provider.dart';

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
    automaticallyImplyLeading: false,
    actions: [
      Consumer<ThemeProvider>(
        builder: (context, theme, child) => IconButton(onPressed: (){
          theme.toggleTheme(!theme.isDarkMode);
        }, icon: Icon(theme.isDarkMode ? Icons.wb_sunny : Icons.nightlight_round_sharp, color: Theme.of(context).iconTheme.color,)) 
      )
    ],
    title: Text('Profile',style: Theme.of(context).textTheme.bodyLarge,),
    centerTitle: true,
  );
  }
}