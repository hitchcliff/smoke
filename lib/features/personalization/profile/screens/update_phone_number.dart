import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/controllers/update_phone_number_controller.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/validators/validation.dart';

class UpdatePhoneNumberScreen extends StatelessWidget {
  const UpdatePhoneNumberScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    UpdatePhoneNumberController controller =
        Get.put(UpdatePhoneNumberController());

    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText("Update phone number"),
        showBackArrow: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                BodyText(
                  "Use real name for easy verification",
                ),
                Form(
                  key: controller.updatePhoneNumberFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.phoneNumber,
                        validator: (value) =>
                            Validation.validateEmptyText("Phone Number", value),
                        decoration: const InputDecoration(
                          labelText: "Phone number",
                          prefixIcon: Icon(FontAwesomeIcons.user),
                        ),
                      ),

                      // ---# Save
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: controller.updatePhoneNumber,
                          child: const BodyText("Save", color: MyColors.white),
                        ),
                      ),
                    ].gap(height: MySizes.spaceBtwItems),
                  ),
                )
              ].gap(height: MySizes.defaultSpace),
            ),
          ),
        ),
      ),
    );
  }
}
