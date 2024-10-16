import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/cart.dart';
import 'package:shop_app/screens/cart/compenents/item_cart.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCart.length,
      itemBuilder: (constext, index){
        final Cart cart = listCart[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
          child: Dismissible(
            key: Key(cart.product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed:(direction){
              setState(() {
                listCart.removeAt(index);
              });
            },
            background: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.delete_forever_outlined, 
                    color: Colors.white,
                    size: 40,
                    ),
                  ),
                ],
              ),
            ),
            child: ItemCart(cart: cart)),
        );
    });
  }
}
