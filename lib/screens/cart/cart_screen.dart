import 'package:flutter/material.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/model/cart.dart';
import 'package:shop_app/screens/cart/compenents/body.dart';
import 'package:shop_app/screens/cart/compenents/cart_navigation_bottom.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/state_managements/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(),
      bottomNavigationBar: CartBottomNavigation() ,
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      title: Column(
        children: [
          Text('Your Cart',style: Theme.of(context).textTheme.bodyLarge,),
          Consumer<CartProvider>(
            builder: (context, cart, child) {
              return Text("${cart.cartItems.length} Items" , style: Theme.of(context).textTheme.bodySmall,);
            }
          )
        ],
      ),
      centerTitle: true,
    );
  }
}
