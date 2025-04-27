import 'package:flutter/material.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/filters/dropdown_filter.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/shop/all_products/all_products_list.dart';
import 'package:smoke/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText("All products"),
        showBackArrow: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---# Dropdown field
              const Padding(
                padding: EdgeInsets.only(
                    top: MySizes.defaultSpace,
                    left: MySizes.defaultSpace,
                    right: MySizes.defaultSpace),
                child: DropdownFilter(
                  defaultValue: "Name",
                  options: ["Name", "Price", "Ratings"],
                ),
              ),

              // ---# Items
              const AllProductsList(),
            ].gap(height: MySizes.spaceBtwSections),
          ),
        ),
      ),
    );
  }
}
