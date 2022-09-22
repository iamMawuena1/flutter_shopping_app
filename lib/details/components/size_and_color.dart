import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
import 'package:shopping_app/model/product.dart';

import 'color_panel.dart';

class SizeandColor extends StatelessWidget {
  const SizeandColor({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Color'),
              Row(
                children: const [
                  ColorPanel(
                    color: Color(0xff356c95),
                    isSelected: true,
                  ),
                  ColorPanel(
                    color: Color(0xffa29898),
                    isSelected: false,
                  ),
                  ColorPanel(
                    color: Color(0xfff8c078),
                    isSelected: false,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: "Size\n"),
                TextSpan(
                  text: "${products.size} cm",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
