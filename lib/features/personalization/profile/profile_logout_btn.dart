import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/repositories/auth/auth_repository.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProfileLogoutBtn extends StatelessWidget {
  const ProfileLogoutBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthRepository auth = AuthRepository.instance;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: auth.logout,
          child: const Text("Logout"),
        ),
      ),
    );
  }
}
