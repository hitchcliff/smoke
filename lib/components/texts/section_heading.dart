import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class SectionHeadingProps {
  const SectionHeadingProps({
    required this.title,
    this.showActionButton = false,
    this.actionText = "View All",
    this.titleColor = MyColors.white,
    this.onPressed,
  });

  final String title;
  final bool showActionButton;
  final String actionText;
  final Color titleColor;
  final VoidCallback? onPressed;
}

class SectionHeading extends StatelessWidget {
  const SectionHeading(
    this.props, {
    super.key,
  });

  final SectionHeadingProps props;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          props.title,
          style: Theme.of(context).textTheme.headlineSmall?.apply(
                overflow: TextOverflow.ellipsis,
              ),
        ),
        if (props.showActionButton)
          TextButton(
            onPressed: props.onPressed,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                  isDarkMode ? MyColors.light : MyColors.dark),
              elevation: const WidgetStatePropertyAll(1),
            ),
            child: Text(
              props.actionText,
              style: TextStyle(
                color: isDarkMode ? MyColors.black : MyColors.white,
              ),
            ),
          )
      ],
    );
  }
}
