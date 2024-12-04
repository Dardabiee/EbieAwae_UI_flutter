import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/cart.dart';
import 'package:shop_app/model/products.dart';
import 'package:shop_app/screens/cart/compenents/item_cart.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/state_managements/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/state_managements/favourite_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<FavouriteProvider>(
      builder: (context,favourite,child) {
        return ListView.builder(
          itemCount: favourite.favouriteProducts.length,
          itemBuilder: (constext, index){
            final Product product = favourite.favouriteProducts[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
              child: Slidable(
                key: Key(product.id.toString()),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),children: [
                    SlidableAction(
                     
                      onPressed: (context) {
                        Provider.of<CartProvider>(context, listen: false).addCartItem(Cart(product: product, num0fItems: 1),);
                        favourite.toggleFavouriteStatus(product.id);
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Added to cart')));
                      },
                      backgroundColor: kPrimaryLightColor,
                      icon:Icons.shopping_cart,
                      label: 'Cart',
                      padding: EdgeInsets.all(getPropScreenWidth(20)),
                    ),
                    SlidableAction(
                      onPressed: (context) {
                        favourite.toggleFavouriteStatus(product.id);
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Remove from favourite')));
                      },
                      backgroundColor: Colors.red,
                      icon:Icons.delete,
                      label: 'Delete',
                      padding: EdgeInsets.all(getPropScreenWidth(20)),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                    )
                  ]
                ),
    child: Row(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       SizedBox(
        width: 88,
         child: AspectRatio(
          aspectRatio: 0.88,
           child: Container(
             width: getPropScreenWidth(140),
             padding: const EdgeInsets.all(20),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: kSecondaryColor.withOpacity(0.1)
             ),
             child: Image.asset(product.images[0]),
           ),
         ),
       ),
       SizedBox(width: getPropScreenHeight(20),),
      Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title),
        SizedBox(height: getPropScreenHeight(10)),
        Text.rich(
          TextSpan(
    children: [
      TextSpan(
        text: "\$ ${product.price}",
        style: TextStyle(
          fontSize: 14,
          color: kPrimaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
          ),
        ),
      ],
    )
    
     ],
    )),
            );
        });
      }
    );
  }
}
