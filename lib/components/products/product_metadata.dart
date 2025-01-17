import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/brand/brand_icon.dart';
import 'package:single_store_ecommerce/components/texts/on_sale.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductMetadata extends StatelessWidget {
  const ProductMetadata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(FontAwesomeIcons.solidStar, color: MyColors.star),
              Expanded(
                  child: Text("5.0 (199)",
                      style: Theme.of(context).textTheme.labelMedium)),
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.share,
                    color: isDarkMode ? MyColors.white : MyColors.black),
              ),
            ].gap(width: MySizes.spaceBtwItems),
          ),
          Row(
            children: [
              const OnSale(saleTxt: "20%"),
              Text("\$250",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.apply(decoration: TextDecoration.lineThrough)),
              Text("\$175", style: Theme.of(context).textTheme.headlineMedium)
            ].gap(width: MySizes.spaceBtwItems),
          ),
          Row(
            children: [
              Text("Status", style: Theme.of(context).textTheme.labelMedium),
              Text("In Stock", style: Theme.of(context).textTheme.bodyMedium),
            ].gap(width: MySizes.spaceBtwItems),
          ),
          Row(
            children: [
              Text("Brand", style: Theme.of(context).textTheme.labelMedium),
              BrandIcon(name: "Nike", verified: true)
            ].gap(width: MySizes.spaceBtwItems),
          ),
        ].gap(height: MySizes.sm),
      ),
    );
  }
}
