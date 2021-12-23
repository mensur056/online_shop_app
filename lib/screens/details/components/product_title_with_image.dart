import 'package:flutter/material.dart';
import 'package:online_shop_app/models/products.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({

    required this.product,
  }) ;

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,style: TextStyle(color: Colors.white),

          ),
          Text(
            product.model,
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Price\n',
                          style: TextStyle(color: Colors.white)),
                      TextSpan(
                          text: "${product.price} AZN",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                child: Hero(tag:'${product.id}',
                  child: Image.asset(
                    product.image,fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
