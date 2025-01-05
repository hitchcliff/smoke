import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.showActionButton = false,
    this.actionText = "view all",
    this.titleColor = MyColors.white,
    this.onPressed,
  });

  final String title;
  final bool showActionButton;
  final String actionText;
  final Color titleColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.apply(
                overflow: TextOverflow.ellipsis,
                color: titleColor,
              ),
        ),
        if (showActionButton)
          (TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                    isDarkMode ? MyColors.light : MyColors.dark),
                elevation: const WidgetStatePropertyAll(1),
              ),
              child: Text(
                actionText,
                style: TextStyle(
                  color: isDarkMode ? MyColors.black : MyColors.white,
                ),
              )))
      ],
    );
  }
}
