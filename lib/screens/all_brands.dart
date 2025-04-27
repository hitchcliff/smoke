import 'package:flutter/material.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/brand/brand.dart';
import 'package:smoke/components/brand/brand_item.dart';
import 'package:smoke/components/brand/brands.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/controllers/brand_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BrandController brandController = BrandController.instance;

    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText("All brands"),
        showBackArrow: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                // ---# Brands
                Brands(brandController.featuredBrands
                    .map((brand) => (Brand(
                          BrandItemProp(
                            isNetworkImage: true,
                            image: brand.image,
                            brandName: brand.name,
                            totalProducts: brand.totalProducts.toString(),
                            verified: true,
                          ),
                        )))
                    .toList()),
              ].gap(height: MySizes.spaceBtwSections),
            ),
          ),
        ),
      ),
    );
  }
}
