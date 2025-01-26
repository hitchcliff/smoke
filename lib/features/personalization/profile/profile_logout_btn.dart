import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProfileLogoutBtn extends StatelessWidget {
  const ProfileLogoutBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {},
          child: const Text("Logout"),
        ),
      ),
    );
  }
}
