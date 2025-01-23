import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/card/reply_card.dart';
import 'package:single_store_ecommerce/components/rating_bars/rating_star_bar.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/label_info_text.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProductUserRatings extends StatelessWidget {
  const ProductUserRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ---# User with action btn
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(MyImages.reviewersImg1),
            ),
            const Expanded(
              child: BodyText(
                "John Doe",
                fontWeight: "bold",
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.ellipsisVertical))
          ].gap(width: MySizes.sm),
        ),

        // ---# Star ratings
        Row(
          children: [
            const RatingStarBar("", rating: 4),
            const LabelInfoText("Jan 23, 2025"),
          ].gap(width: MySizes.sm),
        ),

        // ---# Comments
        const BodyText(
          "Mauris volutpat nulla auctor justo ultricies sollicitudin. Morbi et auctor urna. Vivamus rhoncus hendrerit nunc, sed vestibulum nisi venenatis non. Proin quis vulputate sapien, sit amet placerat justo.",
        ),

        // ---# Seller reply
        const ReplyCard(
          name: "Kevin Store",
          date: "Jan 24, 2025",
          message:
              "Mauris volutpat nulla auctor justo ultricies sollicitudin. Morbi et auctor urna. Vivamus rhoncus hendrerit nunc, sed vestibulum nisi venenatis non. Proin quis vulputate sapien, sit amet placerat justo. Morbi eget lobortis urna. Morbi molestie bibendum dictum. Quisque eleifend neque nec turpis sagittis cursus. Pellentesque condimentum condimentum venenatis. Donec pulvinar tincidunt.",
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
