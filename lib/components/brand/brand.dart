import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand/brand_item.dart';
import 'package:single_store_ecommerce/components/card/card_container.dart';

class Brand extends StatelessWidget {
  const Brand(this.prop, {super.key});

  final BrandItemProp prop;

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: BrandItem(
        BrandItemProp(
          image: prop.image,
          brandName: prop.brandName,
          verified: prop.verified,
          totalProducts: prop.totalProducts,
        ),
      ),
    );
  }
}
