import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/models/products.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: product.color,
        appBar: AppBar(
          backgroundColor: product.color,
          leading: IconButton(
            icon: SvgPicture.asset('assets/icons/back (1).svg'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
