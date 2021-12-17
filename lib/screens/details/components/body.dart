import 'package:flutter/material.dart';
import 'package:online_shop_app/models/products.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [SizedBox(height: size.height,
          child: Stack(),)],
      ),
    );
  }
}
