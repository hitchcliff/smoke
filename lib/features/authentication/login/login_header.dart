import 'package:flutter/material.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/image_strings.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    bool isDark = MyHelpers.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              isDark ? MyImages.logoWhiteImage : MyImages.logoBlackImage),
        ),
        Text(
          MyTexts.loginTitle,
          style: theme.textTheme.headlineMedium,
          textAlign: TextAlign.start,
        ),
        Text(
          MyTexts.loginSubTitle,
          style: theme.textTheme.bodySmall,
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
