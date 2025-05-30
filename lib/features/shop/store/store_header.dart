import 'package:flutter/material.dart';
import 'package:smoke/components/forms/search_form.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/shop/store/store_brands.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';

class StoreHeader extends StatelessWidget {
  const StoreHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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

          const StoreBrands(),

          const SizedBox(
            height: MySizes.spaceBtwItems,
          ),
        ].gap(height: MySizes.spaceBtwSections),
      ),
    );
  }
}
