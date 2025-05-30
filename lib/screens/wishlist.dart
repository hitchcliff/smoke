import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/features/shop/wishlist/wishlist_products.dart';
import 'package:smoke/utils/constants/text_strings.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          MyTexts.appbarWishlistTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.plus),
          ),
        ],
      ),
      body: const SafeArea(
        child: Column(
          children: [
            // ---# List of products
            WishlistProducts(),
          ],
        ),
      ),
    );
  }
}
