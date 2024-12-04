import 'package:flutter/material.dart';
import 'package:shop_app/model/cart.dart';
import 'package:shop_app/model/products.dart';

class CartProvider  extends ChangeNotifier{
  final List<Cart> _listCart = [
  Cart(product: demoProducts[0], num0fItems: 2),
  Cart(product: demoProducts[1], num0fItems: 3),
  Cart(product: demoProducts[3], num0fItems: 1),
  ];
  List<Cart> get cartItems => _listCart;

  void removeCartItem(Cart cartItem){
    _listCart.removeWhere((item) => item.product.id == cartItem.product.id);
    notifyListeners();
  }

  void addCartItem(Cart cartItem){
    final index = _listCart.indexWhere((item) => item.product.id == cartItem.product.id);
    if(index != -1){
      _listCart[index].num0fItems += cartItem.num0fItems;
    }else{
      _listCart.add(cartItem);
    }
    notifyListeners();
  }

  double get totalPrice => double.parse(
    _listCart.fold(0.0, (double total, current) => total + current.product.price * current.num0fItems).toStringAsFixed(2),
  );

  void clearCart(){
    _listCart.clear();

    notifyListeners();
  }
}