import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mahastore/utils/constants/colors.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: MahaSizes.spaceBtwSections),
      child: Column(
        children: [
          const SizedBox(height: MahaSizes.sm),
          // Email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MahaTexts.email),
          ),
          const SizedBox(
            height: MahaSizes.spaceBtwInputFields,
          ),
          // Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MahaTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: MahaSizes.spaceBtwInputFields / 2,
          ),
          // Remember me & forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(MahaTexts.rememberMe),
                ],
              ),
              // Forget Password
              TextButton(
                  onPressed: () {},
                  child: const Text(MahaTexts.forgetPassword))
            ],
          ),
          const SizedBox(
            height: MahaSizes.spaceBtwSections,
          ),
          // Sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: MahaColors.secondary,
                  side: const BorderSide(
                      width: 1, color: MahaColors.secondary)),
              child: const Text(MahaTexts.signIn),
            ),
          ),
          const SizedBox(
            height: MahaSizes.spaceBtwItems,
          ),
          // Create account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  side: BorderSide(
                      width: 1, color: dark ? MahaColors.white : MahaColors.primary)),
              child: Text(
                MahaTexts.createAccount,
                style: TextStyle(color: dark ? MahaColors.white : MahaColors.primary),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}