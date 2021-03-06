import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/components/product_title_with_image.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
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
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: kDefaultPadding * 2.5),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ColorAndSize(product: product),
                          Description(product: product),
                          SizedBox(
                            height: kDefaultPadding / 2,
                          ),
                          CounterWithFavBtn(),
                          SizedBox(
                            height: kDefaultPadding / 2,
                          ),
                          AddToCart(product: product)
                        ],
                      ),
                    ),
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
