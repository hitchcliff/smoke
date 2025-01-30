import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand/brand.dart';
import 'package:single_store_ecommerce/components/grid_layouts/grid_layout.dart';

class Brands extends StatelessWidget {
  const Brands(
    this.brandItem, {
    super.key,
  });

  final List<Brand> brandItem;

  @override
  Widget build(BuildContext context) {
    return GridLayout(
      crossAxisCount: 2,
      children: brandItem,
    );
  }
}
