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
      size: 6.1,
      description: iphoneText,
      image: "assets/images/phone_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Xiaomi",
      model: 'Xiaomi redmi note 9s',
      price: 460,
      size: 6.3,
      description: iphoneText,
      image: "assets/images/phone_2.png",
      color: Color(0xFFec6410)),
  Product(
      id: 3,
      title: "Lenovo",
      model: 'Lenovo Z5 s',
      price: 440,
      size: 6.39,
      description: iphoneText,
      image: "assets/images/phone_3.png",
      color: Color(0xFF989493)),
  Product(
    id: 4,
    title: "Nokia",
    model: 'Nokia 1.4 SmartPhone 32G Grey',
    price: 360,
    size: 5.5,
    description: iphoneText,
    image: "assets/images/phone_4.png",
    color: Color(0xFFe9286f),
  ),
  Product(
    id: 5,
    title: "Asus",
    model: 'Asus Rog Phone2',
    price: 2320,
    size: 6.7,
    description: iphoneText,
    image: "assets/images/phone_5.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Samsung ",
    model: 'Samsung Galaxy S10',
    price: 1550,
    size: 5.8,
    description: iphoneText,
    image: "assets/images/phone_6.png",
    color: Color(0xFF9b1fe9),
  ),
  Product(
      id: 7,
      title: "OnePlus",
      model: 'OnePlus Nord ',
      price: 820,
      size: 6.1,
      description: iphoneText,
      image: "assets/images/phone_7.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 8,
      title: "Sony",
      model: 'Sony Xperia',
      price: 330,
      size: 6.1,
      description:xiaomiText,
      image: "assets/images/phone_8.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 9,
      title: "Oppo",
      model: 'Oppo A53',
      price: 790,
      size: 6.1,
      description:xiaomiText ,
      image: "assets/images/phone_9.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 10,
      title: "Casper",
      model: 'Casper via a4',
      price: 640,
      size: 6.1,
      description: iphoneText,
      image: "assets/images/phone_10.png",
      color: Color(0xFF3D82AE)),
];
String iphoneText =
    "The main features of the Pro models will be that they will be equipped with OLED screens with 120 Hz image update. In addition, the iPhone 13 models are expected to be equipped with slightly larger batteries. According to insiders, the iPhone 13 mini will sell for  699, the iPhone 13 for  799, the iPhone 13 Pro for 999, and the iPhone 13 Pro Max for  1,099. In addition, on September 30, Apple may launch AirPods 3 headphones. The headphones are expected to be designed in the style of the AirPods Pro.";
String xiaomiText =
    "Əlavə xüsusiyyətlər";