import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/controllers/delete_user_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/validators/validation.dart';

class ReAuthenticateScreen extends StatelessWidget {
  const ReAuthenticateScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DeleteUserController controller = Get.put(DeleteUserController());

    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText("Re-Authenticate User"),
        showBackArrow: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                BodyText(
                  "Please re-authenticate to confirm this action.",
                ),
                Form(
                  key: controller.deleteUserFormKey,
                  child: Column(
                    children: [
                      /// First name
                      TextFormField(
                        controller: controller.email,
                        validator: (value) => Validation.validateEmail(value),
                        decoration: const InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(FontAwesomeIcons.user),
                        ),
                      ),

                      /// Password
                      Obx(
                        () => TextFormField(
                          controller: controller.password,
                          validator: (value) =>
                              Validation.validatePassword(value),
                          obscureText: controller.hidePassword.value,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(FontAwesomeIcons.user),
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.hidePassword.value =
                                    !controller.hidePassword.value;
                              },
                              icon: Icon(controller.hidePassword.value
                                  ? FontAwesomeIcons.eyeSlash
                                  : FontAwesomeIcons.eye),
                            ),
                          ),
                        ),
                      ),

                      // ---# Save
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: controller.reAuthenticate,
                          child:
                              const BodyText("Delete", color: MyColors.white),
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
