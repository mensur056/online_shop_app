import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper_tv/flutter_swiper.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Swiper(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Body(headline1: 'Phone',index: index,);
          },
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/back (1).svg'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search (1).svg',
              color: kTextColor),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/cart.svg', color: kTextColor),
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
