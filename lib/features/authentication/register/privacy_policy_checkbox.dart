import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:single_store_ecommerce/controllers/register_controller.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';

class PrivacyPolicyCheckbox extends StatelessWidget {
  const PrivacyPolicyCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RegisterController controller = RegisterController().instance;
    ThemeData theme = Theme.of(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) {
                controller.privacyPolicy.value = value!;
              },
            ),
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: "I agree to ", style: theme.textTheme.bodySmall),
              TextSpan(
                text: "Privacy Policy ",
                style: theme.textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  color: MyColors.primary,
                  decorationColor: MyColors.primary,
                ),
              ),
              TextSpan(text: "and ", style: theme.textTheme.bodySmall),
              TextSpan(
                text: "Terms of use",
                style: theme.textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  color: MyColors.primary,
                  decorationColor: MyColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
