import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class DropdownFilter extends StatelessWidget {
  const DropdownFilter({
    super.key,
    required this.defaultValue,
    required this.options,
  });

  final String defaultValue;
  final List<String> options;

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);
    ProductController productController = ProductController.instance;

    return DropdownButtonFormField(
      value: defaultValue,
      dropdownColor: isDark ? MyColors.black : MyColors.light,
      decoration: const InputDecoration(
          prefixIcon: Icon(
            FontAwesomeIcons.arrowUpWideShort,
          ),
          labelText: "Selected option"),
      onChanged: (value) {
        productController.resortProducts(value!);
      },
      items: options
          .map(
            (option) => DropdownMenuItem(
              value: option,
              child: BodyText(option),
            ),
          )
          .toList(),
    );
  }
}
