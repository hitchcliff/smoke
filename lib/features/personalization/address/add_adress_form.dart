import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class AddAdressForm extends StatelessWidget {
  const AddAdressForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
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
                child:
                    const BodyText("Save new address", color: MyColors.white)),
          )
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
