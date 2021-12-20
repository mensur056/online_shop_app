import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/components/product_title_with_image.dart';

import 'color_dot.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  //height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        24,
                      ),
                      topRight: Radius.circular(
                        24,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Color'),
                              Row(
                                children: [
                                  ColorDot(
                                    color: Color(
                                      0xFF356C95,
                                    ),
                                    isSelected: true,
                                  ),
                                  ColorDot(
                                    color: Color(
                                      0xFFF8C078,
                                    ),
                                  ),
                                  ColorDot(
                                    color: Color(
                                      0xFFFA29B9B,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),RichText(
                            text: TextSpan(
                                style: TextStyle(color: kTextColor),
                                children: [
                                  TextSpan(text: 'Size\n'),
                                  TextSpan(
                                      text: '${product.size}',
                                      style: Theme.of(context).textTheme.headline5)
                                ]),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
