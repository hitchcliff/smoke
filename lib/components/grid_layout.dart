import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.children,
    this.crossAxisCount = 2,
  });

  final List<Widget> children;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    List<TrackSize> trackSize = [];

    var totalSize = (children.length / crossAxisCount).ceil();

    for (int i = 0; i < totalSize; i++) {
      trackSize.add(auto);
    }

    return LayoutGrid(
      columnSizes: crossAxisCount == 2 ? [1.fr, 1.fr] : [1.fr],
      rowSizes: trackSize,
      rowGap: MySizes.spaceBtwItems,
      columnGap: MySizes.spaceBtwItems,
      children: children,
    );
  }
}
