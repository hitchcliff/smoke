import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class FullscreenContainer extends StatelessWidget {
  const FullscreenContainer({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
          minHeight: MyHelpers.screenHeight(),
        ),
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: child,
      ),
    );
  }
}
