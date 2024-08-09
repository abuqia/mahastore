import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahastore/common/widgets/login_signup/form_divider.dart';
import 'package:mahastore/common/widgets/login_signup/social_buttons.dart';
import 'package:mahastore/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/constants/text_strings.dart';
import 'package:mahastore/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MahaHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MahaSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                MahaTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MahaSizes.spaceBtwSections,
              ),
              // Form
              const SignupForm(),
              const SizedBox(
                height: MahaSizes.spaceBtwSections,
              ),
              // Divider
              FormDivider(
                  dark: dark, dividerText: MahaTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: MahaSizes.spaceBtwSections,
              ),
              // Social buttons
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

