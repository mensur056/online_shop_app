import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/components/product_title_with_image.dart';

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
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('Color'),
                          Container(
                            margin: EdgeInsets.only(
                                top: kDefaultPadding / 4,
                                right: kDefaultPadding / 2),
                            padding: EdgeInsets.all(2.5),
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF356C95),
                              ),
                            ),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Color(
                                    0xFF356C95,
                                  ),
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ],
                      )
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
