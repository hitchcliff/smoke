import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/curve_edges.dart';

class CurveEdgeWidget extends StatelessWidget {
  const CurveEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CurveEdges(), child: child);
  }
}
