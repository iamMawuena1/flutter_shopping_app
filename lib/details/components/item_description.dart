import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../model/product.dart';


class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Text(
        products.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}