import 'package:flutter/material.dart';
import 'package:shop_app/compenents/button_rounded.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/cart.dart';
import 'package:shop_app/model/products.dart';
import 'package:shop_app/screens/detail_screen/compenent/color_picker.dart';
import 'package:shop_app/screens/detail_screen/compenent/detail_description.dart';
import 'package:shop_app/screens/detail_screen/compenent/image_detail.dart';
import 'package:shop_app/screens/detail_screen/compenent/rounded_container.dart';
import 'package:shop_app/size_config.dart';
import 'package:readmore/readmore.dart';
import 'package:shop_app/state_managements/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/state_managements/favourite_provider.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int curretnSelectedColor = 0;
  int totalSelected = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageDetail(product: widget.product),
            RoundedContainer(
              child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                  DetailDescription(product: widget.product),
                  SizedBox(height: getPropScreenWidth(20)),
                  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: getPropScreenWidth(40),
        child: Row(
          children: [
            ...List.generate(widget.product.colors.length, (index){
              final Color color = widget.product.colors[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    curretnSelectedColor = index;
                  });
                },
                child: ItemColor(
                  color: color,
                  isSelected: index == curretnSelectedColor,
                ));
            }),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedIconBtn(icon: Icons.remove, press: totalSelected > 1 ?(){
                  setState(() {
                    if(totalSelected > 0){
                      totalSelected--;
                    }
                  });
                } : null
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("${totalSelected}",style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    // color: Colors.black
                  ),),
                ),
                RoundedIconBtn(icon: Icons.add, showShadow: true, press: (){
                  setState(() {
                    totalSelected++;
                  });
                }),
              ],
            )
          ],
        ),
      ),
    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                    child: MyDefaultButton(text:"Add to Cart", press: (){
                      showModalBottomSheet(context: context, builder: (BuildContext context){
                        return SizedBox(
                          height: 400,
                          child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                            child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    // Judul
    const Text(
      "Add to Cart",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    const SizedBox(height: 20),
    // Informasi Produk
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.product.title,
          style: const TextStyle(fontSize: 16),
        ),
        Text(
          "\$${widget.product.price.toStringAsFixed(2)}",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.green,
          ),
        ),
      ],
    ),
    const SizedBox(height: 10),
    // Jumlah Produk
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Quantity:", style: TextStyle(fontSize: 16)),
        Text(
          "$totalSelected items",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    const Spacer(),
    // Tombol
    Row(
      children: [
        Expanded(
          child: MyDefaultButton(
            text: "Cancel",
            press: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: MyDefaultButton(
            text: "Confirm",
            press: () {
              Provider.of<CartProvider>(context, listen: false).addCartItem(
                Cart(product: widget.product, num0fItems: totalSelected),
              );
              if (widget.product.isFavourite) {
                Provider.of<FavouriteProvider>(context, listen: false)
                    .toggleFavouriteStatus(widget.product.id);
              }
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    ),
  ],
)

                          ),
                        );
                      });
                      // ScaffoldMessenger.of(context)
                      // .showSnackBar(const SnackBar(content: Text("Added to Cart")));     
                    }),
                  )
              ],
            ),)
          ],
        ),
      ),
    );
  }
} 