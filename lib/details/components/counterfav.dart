import 'package:flutter/material.dart';

import 'cart_couter.dart';

class CounterWithFav extends StatelessWidget {
  const CounterWithFav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            color: Color(0xffff6464),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.heart_broken,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
