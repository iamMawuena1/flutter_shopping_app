import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.color,
    required this.description,
    required this.id,
    required this.image,
    required this.price,
    required this.size,
    required this.title,
  });
}

String dummyText =
    "Get the best of foot wear and warm your feet with the best of foot wears that last longer with comfort";

List<Product> products = [
  Product(
    id: 1,
    description: dummyText,
    color: const Color(0xFF3082AE),
    price: 200,
    size: 10,
    title: 'Revolt',
    image: 'images/red-nike.png',
  ),
  Product(
    color: const Color(0xffd3a984),
    description: dummyText,
    id: 2,
    image: 'images/RW.png',
    price: 100,
    size: 8,
    title: 'Jumper',
  ),
  Product(
    id: 3,
    description: dummyText,
    color: const Color(0xFFaeaeae),
    price: 120,
    size: 11,
    title: 'Revolt',
    image: 'images/red-nike.png',
  ),
  Product(
    id: 4,
    description: dummyText,
    color: const Color(0xFFfb7883),
    price: 700,
    size: 15,
    title: 'Air',
    image: 'images/RW.png',
  ),
  Product(
    id: 5,
    description: dummyText,
    color: const Color(0xFFe6b398),
    price: 400,
    size: 8,
    title: 'Airmax',
    image: 'images/RW.png',
  ),
  Product(
    id: 6,
    description: dummyText,
    color: const Color(0xFF3082AE),
    price: 500,
    size: 12,
    title: 'Revolt',
    image: 'images/red-nike.png',
  ),
];
