import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/app_bars/my_tab_bar.dart';
import 'package:single_store_ecommerce/components/icons/cart_counter_icon.dart';
import 'package:single_store_ecommerce/controllers/category_controller.dart';
import 'package:single_store_ecommerce/features/shop/store/store_tab.dart';
import 'package:single_store_ecommerce/components/widgets/dynamic_sliver_appbar.dart';
import 'package:single_store_ecommerce/features/shop/store/store_header.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);
    CategoryController categoryController = CategoryController.instance;

    return DefaultTabController(
      length: categoryController.allCategories.length,
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
                        isDarkMode ? MyColors.dark : MyColors.light,

                    // ---# Header
                    flexibleSpace: const StoreHeader(),

                    // ---# Tabs
                    bottom: MyTabBar(
                      tabs: categoryController.allCategories
                          .map((cat) => Tab(text: cat.name))
                          .toList(),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: categoryController.allCategories
                    .map((cat) => StoreTab(
                          category: cat,
                        ))
                    .toList(),
              )),
        ),
      ),
    );
  }
}
