
import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/products.dart';
import 'package:shop_app/size_config.dart';
import 'package:readmore/readmore.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(product.title, style: TextStyle(
            fontSize: getPropScreenWidth(20),
            color: Colors.black
           ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding:  EdgeInsets.all(getPropScreenWidth(15)),
            width: getPropScreenWidth(64),
            decoration: BoxDecoration(
              color:product.isFavourite 
              ? kPrimaryColor.withOpacity(0.2) 
              : kSecondaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20)
              )
            ),
            child: Icon(Icons.favorite, 
            color: product.isFavourite 
            ? Colors.red 
            : kSecondaryColor,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 64),
          child: ReadMoreText(product.description, 
          trimMode: TrimMode.Line,
          trimLines: 2,
          colorClickableText: kPrimaryColor,
          trimCollapsedText: "\nShow More Detail",
          trimExpandedText: "\nShow less >",
          moreStyle: SeeMoreStyle,
          lessStyle: SeeMoreStyle,
          ),
        )
      ],
    );
  }
}

