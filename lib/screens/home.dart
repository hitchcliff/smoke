import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/header_wrapper.dart';
import 'package:single_store_ecommerce/components/home_appbar.dart';
import 'package:single_store_ecommerce/components/search_form.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: HeaderWrapper(
            child: Column(
              children: [
                // app bar
                const HomeAppbar(),

                // search bar
                SearchForm(
                  onSubmitted: (value) {},
                  text: MyTexts.searchBarPlaceholder,
                ),
              ].gap(height: MySizes.spaceBtwSections),
            ),
          ),
        ),
      ),
    );
  }
}
