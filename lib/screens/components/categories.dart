import 'package:flutter/material.dart';

import '../../constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Hand bag',
    'Jewellery',
    'Footwear',
    'Dresses',
    'Categori'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategories(index)),
      ),
    );
  }

  Widget buildCategories(int index) => GestureDetector(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: TextStyle(
                fontSize: 18,
                color:
                selectedIndex == index ? kTextColor : kTextLightColor),
          ),
          Container(
            height: 2,
            width: 75,
            color:
            selectedIndex == index ? Colors.blue : Colors.transparent,
          )
        ],
      ),
    ),
  );
}
