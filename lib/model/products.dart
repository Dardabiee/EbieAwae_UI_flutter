import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color.fromARGB(255, 22, 81, 244),
      const Color.fromARGB(255, 0, 0, 0),
      const Color.fromARGB(255, 255, 0, 30),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description:"Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      const Color.fromARGB(255, 0, 0, 0),
      const Color.fromARGB(255, 119, 118, 121),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: "The Nike Sport White - Men's Pant is a stylish and functional piece of athletic wear designed for comfort and performance. Made from high-quality, breathable fabric, these pants feature a clean, crisp white color that adds a modern, sleek look. The design is typically slim-fit, offering a streamlined silhouette without sacrificing movement or flexibility",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: "The Gloves XC Omega - Polygon are high-performance cycling gloves designed for comfort, grip, and protection during off-road and cross-country (XC) biking. These gloves are made to enhance rider control while providing cushioning and breathability.",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      const Color.fromARGB(255, 0, 0, 0),
      const Color.fromARGB(255, 167, 167, 167),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head ",
    price: 20.20,
    description: "The Logitech Headset is a versatile and well-designed audio accessory, ideal for gaming, online meetings, or multimedia use. It offers excellent sound quality, comfort, and clear communication, making it a popular choice for various activities",
    rating: 4.1,
    isFavourite: true,
  ),
];

// const String description =
//     "";