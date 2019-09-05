import 'package:flutter/foundation.dart';
class Product {
  final String id;
  final String name;
  final String image;
  bool isFavorite;

  Product({
    @required this.id,
    @required this.name,
    @required this.image,
    this.isFavorite = false
  });
}