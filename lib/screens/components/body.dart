import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),Categories()
      ],
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Hand bag', 'Jewellery', 'Footwear', 'Dresses','Other'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index)),
    );
  }

  Widget buildCategories(int index) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    child: Text(categories[index],style: TextStyle(fontSize: 20),),
  );
}
