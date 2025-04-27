import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/screens/login.dart';
import 'package:smoke/utils/constants/sizes.dart';

List<Widget>? get closeAppBar => [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
        child: IconButton(
          onPressed: () {
            Get.offAll(() => const LoginScreen());
          },
          icon: const Icon(FontAwesomeIcons.xmark),
        ),
      ),
    ];
