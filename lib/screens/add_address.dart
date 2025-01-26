import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/features/personalization/address/add_adress_form.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

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
          child: const AddAdressForm(),
        ),
      ),
    );
  }
}
