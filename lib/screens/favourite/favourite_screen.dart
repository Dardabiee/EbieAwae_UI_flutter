import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_navigation_bar.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/model/cart.dart';
import 'package:shop_app/screens/cart/compenents/cart_navigation_bottom.dart';
import 'package:shop_app/screens/favourite/compenents/body.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/state_managements/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/state_managements/favourite_provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  static String routeName = '/fav';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(),
      bottomNavigationBar:const HomeBottomNavigation(menu: MenuState.favorite,),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text('Your Favourites',style: Theme.of(context).textTheme.bodyLarge,),
          Consumer<FavouriteProvider>(
            builder: (context, favouriteProducts, child) {
              return Text("${favouriteProducts.favouriteProducts.length} Items" , style: Theme.of(context).textTheme.bodySmall,);
            }
          )
        ],
      ),
      centerTitle: true,
    );
  }
}
