import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/components/product_title_with_image.dart';

import 'card_counter.dart';
import 'color_and_size.dart';
import 'color_dot.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

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
                      ColorAndSize(product: product),
                      Description(product: product),
                      CounterWithFavBtn(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 58,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: product.color),
                              ),
                              child: IconButton(
                                icon: SvgPicture.asset(
                                    'assets/icons/add_to_cart.svg'),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
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
