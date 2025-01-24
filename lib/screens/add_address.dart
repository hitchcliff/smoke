import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText("Add address"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                // ---# Name
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(
                      FontAwesomeIcons.user,
                    ),
                  ),
                ),
                // ---# Phone Number
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(
                      FontAwesomeIcons.phone,
                    ),
                  ),
                ),
                // ---# Postal and street
                Row(
                  children: [
                    // ---# Street
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Street",
                          prefixIcon: Icon(
                            FontAwesomeIcons.streetView,
                          ),
                        ),
                      ),
                    ),
                    // ---# Postal code
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Postal Code",
                          prefixIcon: Icon(
                            FontAwesomeIcons.terminal,
                          ),
                        ),
                      ),
                    ),
                  ].gap(width: MySizes.spaceBtwItems),
                ), // ---# Postal and street

                // ---# City & State
                Row(
                  children: [
                    // ---# City
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "City",
                          prefixIcon: Icon(
                            FontAwesomeIcons.city,
                          ),
                        ),
                      ),
                    ),
                    // ---# State
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "State",
                          prefixIcon: Icon(
                            FontAwesomeIcons.chartBar,
                          ),
                        ),
                      ),
                    ),
                  ].gap(width: MySizes.spaceBtwItems),
                ),

                // ---# Country
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Country",
                    prefixIcon: Icon(
                      FontAwesomeIcons.flag,
                    ),
                  ),
                ),

                // ---# Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const BodyText("Save new address",
                          color: MyColors.white)),
                )
              ].gap(height: MySizes.spaceBtwItems),
            ),
          ),
        ),
      ),
    );
  }
}
