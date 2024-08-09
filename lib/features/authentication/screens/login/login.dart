import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahastore/common/styles/spacing_styles.dart';
import 'package:mahastore/common/widgets/login_signup/form_divider.dart';
import 'package:mahastore/common/widgets/login_signup/social_buttons.dart';
import 'package:mahastore/features/authentication/screens/login/widgets/login_form.dart';
import 'package:mahastore/features/authentication/screens/login/widgets/login_header.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/constants/text_strings.dart';
import 'package:mahastore/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MahaHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MahaSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title, SubTitle
              LoginHeader(dark: dark),
              //Form
              LoginForm(dark: dark),
              // Devider
              FormDivider(dark: dark, dividerText: MahaTexts.orSignInWith.capitalize!,),
              const SizedBox(height: MahaSizes.spaceBtwSections,),
              // Footer
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
