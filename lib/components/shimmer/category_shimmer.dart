import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/shimmer/shimmer_effect.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key, required this.itemCount});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: MySizes.defaultSpace),
      child: SizedBox(
          height: 120,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: itemCount,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(
              width: MySizes.spaceBtwItems,
            ),
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Icon shimmer
                ShimmerEffect(
                  height: 60,
                  width: 60,
                  radius: 60,
                ),

                // Text shimmer
                ShimmerEffect(
                  height: 8,
                  width: 50,
                )
              ].gap(height: MySizes.spaceBtwItems),
            ),
          )),
    );
  }
}
