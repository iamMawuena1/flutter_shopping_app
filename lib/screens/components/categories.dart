import 'package:flutter/material.dart';

import '../../constant.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Footwear", 'Shirts', "Watches", 'Spectacles'];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25.0,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  GestureDetector buildCategory(int index) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          selectedItem = index;
        });
      }),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedItem == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              height: 2.0,
              width: 30.0,
              margin: const EdgeInsets.only(top: kDefaultPadding / 5),
              color: selectedItem == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
