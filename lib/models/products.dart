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
      model: 'Iphone 12 ProMax',
      price: 800,
      size: 5.8,
      description: dummyText,
      image: "assets/images/phone_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Xiaomi",
      model: 'Xiaomi redmi s9',
      price: 256,
      size: 8,
      description: dummyText,
      image: "assets/images/phone_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Lenovo",
      model: 'Lenovo Z5 s',
      price: 300,
      size: 5.8,
      description: dummyText,
      image: "assets/images/phone_3.png",
      color: Color(0xFF989493)),
  Product(
    id: 4,
    title: "Nokia",
    model: 'Nokia 1.4 SmartPhone 32G Grey',
    price: 234,
    size: 11,
    description: dummyText,
    image: "assets/images/phone_4.png",
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    title: "Asus",
    model: 'Asus Rog Phone2',
    price: 983,
    size: 12,
    description: dummyText,
    image: "assets/images/phone_5.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Samsung ",
    model: 'Samsung Galaxy S10',
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/phone_6.png",
    color: Color(0xFFAEAEAE),
  ),
];
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
