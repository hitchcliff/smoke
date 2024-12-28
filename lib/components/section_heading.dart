import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading(
      {super.key,
      required this.title,
      this.showActionButton = false,
      this.actionText = "view all"});

  final String title;
  final bool showActionButton;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            color: MyColors.white,
          ),
        ),
        if (showActionButton)
          (TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(MyColors.light),
                elevation: const WidgetStatePropertyAll(1),
              ),
              child: Text(
                actionText,
                style: const TextStyle(
                  color: MyColors.black,
                ),
              )))
      ],
    );
  }
}
