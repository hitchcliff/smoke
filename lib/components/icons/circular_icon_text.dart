import 'package:flutter/material.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class CircularIconText extends StatelessWidget {
  const CircularIconText({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final IconData icon;
  final String text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: MySizes.defaultSpace),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: MyHelpers.isDarkMode(context)
                    ? MyColors.black
                    : MyColors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                icon,
                color: MyHelpers.isDarkMode(context)
                    ? MyColors.white
                    : MyColors.black,
              ),
            ),
            SizedBox(
              width: 55,
              child: Center(
                child: Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: MyColors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ].gap(height: MySizes.sm),
        ),
      ),
    );
  }
}
