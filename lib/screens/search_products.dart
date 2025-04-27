import 'package:flutter/material.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/shop/all_products/search_results.dart';
import 'package:smoke/utils/constants/sizes.dart';

class SearchProductsScreen extends StatelessWidget {
  const SearchProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText(""),
        showBackArrow: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---# Items
              const SearchResults(),
            ].gap(height: MySizes.spaceBtwSections),
          ),
        ),
      ),
    );
  }
}
