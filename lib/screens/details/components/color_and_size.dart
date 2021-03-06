import 'package:flutter/material.dart';
import 'package:online_shop_app/models/products.dart';

import '../../../constants.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20)),
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
          ),
        ),
        Spacer(),
        Expanded(
          child: RichText(
            text: TextSpan(style: TextStyle(color: kTextColor), children: [
              TextSpan(text: 'Size\n', style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20)),
              TextSpan(
                  text: '${product.size}in',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold))
            ]),
          ),
        )
      ],
    );
  }
}
