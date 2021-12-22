import 'package:flutter/material.dart';

class Product {
  final String image, title, description, model;
  final double price, size, id;
  final Color color;

  Product({
    required this.model,
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Iphone",
      model: 'Iphone 13 ProMax',
      price: 2690,
      size: 5.8,
      description: dummyText,
      image: "assets/images/phone_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Xiaomi",
      model: 'Xiaomi redmi note 9s',
      price: 460,
      size: 6.3,
      description: dummyText,
      image: "assets/images/phone_2.png",
      color: Color(0xFFec6410)),
  Product(
      id: 3,
      title: "Lenovo",
      model: 'Lenovo Z5 s',
      price: 440,
      size: 6.39,
      description: dummyText,
      image: "assets/images/phone_3.png",
      color: Color(0xFF989493)),
  Product(
    id: 4,
    title: "Nokia",
    model: 'Nokia 1.4 SmartPhone 32G Grey',
    price: 360,
    size: 5.5,
    description: dummyText,
    image: "assets/images/phone_4.png",
    color: Color(0xFFe9286f),
  ),
  Product(
    id: 5,
    title: "Asus",
    model: 'Asus Rog Phone2',
    price: 2320,
    size: 6.7,
    description: dummyText,
    image: "assets/images/phone_5.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Samsung ",
    model: 'Samsung Galaxy S10',
    price: 1550,
    size: 5.8,
    description: dummyText,
    image: "assets/images/phone_6.png",
    color: Color(0xFF9b1fe9),
  ),
];
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
