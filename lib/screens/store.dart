import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/brand.dart';
import 'package:single_store_ecommerce/components/cart_counter_icon.dart';
import 'package:single_store_ecommerce/components/circular_container.dart';
import 'package:single_store_ecommerce/components/grid_layout.dart';
import 'package:single_store_ecommerce/components/my_app_bar.dart';
import 'package:single_store_ecommerce/components/search_form.dart';
import 'package:single_store_ecommerce/components/section_heading.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: false,
        title: Text(
          MyTexts.appbarShopTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCounterIcon(
              color: isDarkMode ? MyColors.white : MyColors.black,
              onPressed: () {}),
        ],
      ),
      body: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor:
                        isDarkMode ? MyColors.black : MyColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(MySizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          // ---# Search bar
                          SearchForm(
                            text: MyTexts.searchBarPlaceholder,
                            onSubmitted: (value) {},
                            padding: const EdgeInsets.all(0),
                          ),

                          Column(
                            children: [
                              // ---# Heading
                              SectionHeading(
                                titleColor: MyColors.black,
                                title: MyTexts.headingFeatureBrands,
                                showActionButton: true,
                                actionText: MyTexts.headingActionBtnTxt,
                                onPressed: () {},
                              ),

                              // ---# Brands
                              const GridLayout(
                                crossAxisCount: 2,
                                children: [
                                  Brand(
                                    image: AssetImage(
                                      MyImages.brandNike,
                                    ),
                                    brandName: MyTexts.brandNike,
                                    totalProducts: "256",
                                    verified: true,
                                  ),
                                  Brand(
                                    image: AssetImage(
                                      MyImages.brandNike,
                                    ),
                                    brandName: MyTexts.brandNike,
                                    totalProducts: "256",
                                    verified: true,
                                  ),
                                  Brand(
                                    image: AssetImage(
                                      MyImages.brandNike,
                                    ),
                                    brandName: MyTexts.brandNike,
                                    totalProducts: "256",
                                    verified: true,
                                  ),
                                  Brand(
                                    image: AssetImage(
                                      MyImages.brandNike,
                                    ),
                                    brandName: MyTexts.brandNike,
                                    totalProducts: "256",
                                    verified: true,
                                  ),
                                ],
                              ),
                            ].gap(height: MySizes.spaceBtwItems),
                          )
                        ].gap(height: MySizes.spaceBtwSections),
                      ),
                    ),
                  ),
                ];
              },
              body: const SizedBox())),
    );
  }
}
