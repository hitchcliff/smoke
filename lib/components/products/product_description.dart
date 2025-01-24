import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/texts/collapse_text.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Column(
        children: [
          SectionHeading(SectionHeadingProps(
            title: "Description",
            titleColor: MyHelpers.textColor(context: context),
          )),
          const CollapseText(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet velit purus, non mattis tellus volutpat at. Donec cursus laoreet neque ac ultricies. Suspendisse porttitor quam bibendum hendrerit hendrerit. Etiam bibendum urna et nunc volutpat vulputate. Donec ac erat sapien. Suspendisse suscipit, metus in sagittis gravida, erat enim posuere leo, nec ornare libero libero ac libero. Maecenas bibendum nulla condimentum orci tempor sodales a id risus."),
          const Divider()
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
