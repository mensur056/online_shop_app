import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'card_counter.dart';
class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration:
          BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFF6464)),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}