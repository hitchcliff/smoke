import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class CollapseText extends StatelessWidget {
  const CollapseText(
    this.s, {
    super.key,
  });

  final String s;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      s,
      style: Theme.of(context).textTheme.bodyMedium,
      moreStyle: TextStyle(
          color: MyHelpers.textColor(context: context),
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.italic),
      lessStyle: TextStyle(
          color: MyHelpers.textColor(context: context),
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.italic),
      trimLines: 2,
      trimMode: TrimMode.Line,
      trimExpandedText: " Less",
      trimCollapsedText: " Show more",
    );
  }
}
