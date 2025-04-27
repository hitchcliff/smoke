import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/controllers/update_name_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/validators/validation.dart';

class UpdateNameScreen extends StatelessWidget {
  const UpdateNameScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    UpdateNameController controller = Get.put(UpdateNameController());

    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText("Update name"),
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
                  key: controller.updateNameFormKey,
                  child: Column(
                    children: [
                      /// First name
                      TextFormField(
                        controller: controller.firstName,
                        validator: (value) =>
                            Validation.validateEmptyText("First Name", value),
                        decoration: const InputDecoration(
                          labelText: "First Name",
                          prefixIcon: Icon(FontAwesomeIcons.user),
                        ),
                      ),

                      /// Last name
                      TextFormField(
                        controller: controller.lastName,
                        validator: (value) =>
                            Validation.validateEmptyText("Last Name", value),
                        decoration: const InputDecoration(
                          labelText: "Last Name",
                          prefixIcon: Icon(FontAwesomeIcons.user),
                        ),
                      ),

                      // ---# Save
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: controller.updateName,
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
