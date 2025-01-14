import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/containers/circular_container.dart';
import 'package:single_store_ecommerce/components/paths/curve_edges.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';

class HeaderWrapper extends StatelessWidget {
  const HeaderWrapper({super.key, required this.child, this.height = 400});

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveEdges(),
      child: Container(
        color: MyColors.primary,
        child: Stack(children: [
          const Positioned(
            top: -150,
            right: -250,
            child: CircularContainer(
              backgroundColor: MyColors.white,
              opacity: 0.1,
            ),
          ),
          const Positioned(
            top: 100,
            right: -300,
            child: CircularContainer(
              backgroundColor: MyColors.white,
              opacity: 0.1,
            ),
          ),
          child,
        ]),
      ),
    );
  }
}
