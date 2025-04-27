import 'package:flutter/material.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/features/personalization/address/add_adress_form.dart';
import 'package:smoke/utils/constants/sizes.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText("Add address"),
        showBackArrow: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: const AddAdressForm(),
          ),
        ),
      ),
    );
  }
}
