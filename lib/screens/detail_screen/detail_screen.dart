import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/products.dart';
import 'package:shop_app/screens/detail_screen/compenent/body.dart';
import 'package:shop_app/size_config.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});
  static String routeName = '/detail';
   
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back_ios_new_rounded, size: 25,)
        ),
        actions:[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            child: Row(
              children: [
                Text("${product.rating}", style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  // color: Color(kSecondaryColor)
                 ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.star, color: Colors.amber, size: 20,)
              ],
            ),
          )
        ],
      ),
      body: Body(product: product,),
    );
  }
}