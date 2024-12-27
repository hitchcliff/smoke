import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
    required this.text,
    this.icon = FontAwesomeIcons.magnifyingGlass,
    required this.onSubmitted,
  });

  final String text;
  final IconData? icon;
  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: SearchBar(
        onSubmitted: onSubmitted,
        leading: Icon(
          icon,
          color: MyHelpers.isDarkMode(context) ? MyColors.white : MyColors.grey,
        ),
        hintText: text,
      ),
    );
  }
}
