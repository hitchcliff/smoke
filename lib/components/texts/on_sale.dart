import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class OnSale extends StatelessWidget {
  const OnSale({
    super.key,
    required this.saleTxt,
  });

  final String saleTxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MySizes.cardSaleHPadding,
        vertical: MySizes.cardSaleVPadding,
      ),
      decoration: BoxDecoration(
        color: MyColors.secondary,
        borderRadius: BorderRadius.circular(
          MySizes.cardSaleRadius,
        ),
      ),
      child: Text(saleTxt,
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.apply(color: MyColors.black)),
    );
  }
}
