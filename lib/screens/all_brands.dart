import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/brand/brand.dart';
import 'package:single_store_ecommerce/components/brand/brand_item.dart';
import 'package:single_store_ecommerce/components/brand/brands.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                const Brands([
                  Brand(
                    BrandItemProp(
                      image: AssetImage(
                        MyImages.brandNike,
                      ),
                      brandName: MyTexts.brandNike,
                      totalProducts: "256",
                      verified: true,
                    ),
                  ),
                  Brand(
                    BrandItemProp(
                      image: AssetImage(
                        MyImages.brandIkea,
                      ),
                      brandName: "Ikea",
                      totalProducts: "256",
                      verified: true,
                    ),
                  ),
                  Brand(
                    BrandItemProp(
                      image: AssetImage(
                        MyImages.brandZara,
                      ),
                      brandName: "Zara",
                      totalProducts: "256",
                      verified: true,
                    ),
                  ),
                  Brand(
                    BrandItemProp(
                      image: AssetImage(
                        MyImages.brandAdiddas,
                      ),
                      brandName: "Adidas",
                      totalProducts: "256",
                      verified: true,
                    ),
                  ),
                  Brand(
                    BrandItemProp(
                      image: AssetImage(
                        MyImages.brandPuma,
                      ),
                      brandName: "Puma",
                      totalProducts: "256",
                      verified: true,
                    ),
                  ),
                  Brand(
                    BrandItemProp(
                      image: AssetImage(
                        MyImages.brandApple,
                      ),
                      brandName: "Apple",
                      totalProducts: "256",
                      verified: true,
                    ),
                  ),
                  Brand(
                    BrandItemProp(
                      image: AssetImage(
                        MyImages.brandNike,
                      ),
                      brandName: MyTexts.brandNike,
                      totalProducts: "256",
                      verified: true,
                    ),
                  ),
                  Brand(
                    BrandItemProp(
                      image: AssetImage(
                        MyImages.brandNike,
                      ),
                      brandName: MyTexts.brandNike,
                      totalProducts: "256",
                      verified: true,
                    ),
                  ),
                ]),
              ].gap(height: MySizes.spaceBtwSections),
            ),
          ),
        ),
      ),
    );
  }
}
