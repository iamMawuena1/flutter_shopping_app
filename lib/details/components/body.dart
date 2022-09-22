import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
import 'package:shopping_app/details/components/buy_now.dart';
import 'package:shopping_app/details/components/item_description.dart';
import 'package:shopping_app/details/components/product_page.dart';
import 'package:shopping_app/details/components/size_and_color.dart';
import 'package:shopping_app/model/product.dart';

import 'counterfav.dart';

class Body extends StatelessWidget {
  final Product products;
  const Body({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    //Controls height and width of a screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  // CONTAINER SHAPING AND PADDING
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  // COLOR WIDGET POSITIONING
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizeandColor(products: products),
                      const SizedBox(height: kDefaultPadding / 2),
                      Description(products: products),
                      const SizedBox(height: kDefaultPadding / 2),
                      const CounterWithFav(),
                      const SizedBox(height: kDefaultPadding / 2),
                      BuyNow(products: products),
                    ],
                  ),
                ),
                ProductPageWithImage(products: products),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
