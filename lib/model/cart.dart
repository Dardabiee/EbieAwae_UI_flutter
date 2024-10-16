import 'package:flutter/material.dart';
import 'package:shop_app/model/products.dart';

class Cart{
  final Product product;
  final int num0fItems;

  Cart({
      required this.product,
      required this.num0fItems,
    });
}

final List<Cart> listCart = [
  Cart(product: demoProducts[0], num0fItems: 2),
  Cart(product: demoProducts[1], num0fItems: 3),
  Cart(product: demoProducts[3], num0fItems: 1),
];