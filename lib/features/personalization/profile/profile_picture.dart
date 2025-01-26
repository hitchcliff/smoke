import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          child: Image(
            image: AssetImage(MyImages.profileImg),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(MyTexts.settingsChangeProfile),
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
