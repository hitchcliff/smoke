import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand/brand.dart';
import 'package:single_store_ecommerce/components/brand/brand_item.dart';
import 'package:single_store_ecommerce/components/icons/cart_counter_icon.dart';
import 'package:single_store_ecommerce/components/widgets/dynamic_sliver_appbar.dart';
import 'package:single_store_ecommerce/components/grid_layouts/grid_layout.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/app_bars/my_tab_bar.dart';
import 'package:single_store_ecommerce/components/forms/search_form.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/components/store/store_tab.dart';
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

    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                  DynamicSliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor:
                        isDarkMode ? MyColors.black : MyColors.white,

                    // ---# Header
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
                                SectionHeadingProps(
                                  titleColor: isDarkMode
                                      ? MyColors.light
                                      : MyColors.black,
                                  title: MyTexts.headingFeatureBrands,
                                  showActionButton: true,
                                  actionText: MyTexts.headingActionBtnTxt,
                                  onPressed: () {},
                                ),
                              ),

                              // ---# Feature Brands
                              const GridLayout(
                                crossAxisCount: 2,
                                children: [
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
                                ],
                              ),
                            ].gap(height: MySizes.spaceBtwItems),
                          ),

                          const SizedBox(
                            height: MySizes.spaceBtwItems,
                          ),
                        ].gap(height: MySizes.spaceBtwSections),
                      ),
                    ),

                    // ---# Tabs
                    bottom: const MyTabBar(
                      tabs: [
                        Tab(text: "Electronics"),
                        Tab(text: "Sports"),
                        Tab(text: "Furniture"),
                        Tab(text: "Clothes"),
                        Tab(text: "Store"),
                      ],
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                children: [
                  StoreTab(),
                ],
              )),
        ),
      ),
    );
  }
}
