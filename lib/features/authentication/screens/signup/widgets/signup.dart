import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mahastore/common/widgets/login_signup/form_divider.dart';
import 'package:mahastore/common/widgets/login_signup/social_buttons.dart';
import 'package:mahastore/utils/constants/colors.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/constants/text_strings.dart';
import 'package:mahastore/utils/helpers/helper_functions.dart';

class SignuppScreen extends StatelessWidget {
  const SignuppScreen({super.key});

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
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: MahaTexts.firstName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      const SizedBox(
                        width: MahaSizes.spaceBtwInputFields,
                      ),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: MahaTexts.lastName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: MahaSizes.spaceBtwInputFields,
                  ),
                  // Username
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MahaTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),
                  const SizedBox(
                    height: MahaSizes.spaceBtwInputFields,
                  ),
                  // Email
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: MahaTexts.email,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  const SizedBox(
                    height: MahaSizes.spaceBtwInputFields,
                  ),
                  // Phone Number
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: MahaTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  const SizedBox(
                    height: MahaSizes.spaceBtwInputFields,
                  ),
                  // assword
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: MahaTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(
                    height: MahaSizes.spaceBtwInputFields,
                  ),
                  // Terms & conditions checkbox
                  Row(
                    children: [
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {})),
                      const SizedBox(
                        width: MahaSizes.spaceBtwItems,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: '${MahaTexts.iAgreeTo} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: '${MahaTexts.privacyPolicy} ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    color: dark
                                        ? MahaColors.white
                                        : MahaColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: dark
                                        ? MahaColors.white
                                        : MahaColors.primary)),
                        TextSpan(
                            text: '${MahaTexts.and} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: '${MahaTexts.termsOfUse} ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    color: dark
                                        ? MahaColors.white
                                        : MahaColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: dark
                                        ? MahaColors.white
                                        : MahaColors.primary)),
                      ]))
                    ],
                  ),
                  const SizedBox(
                    height: MahaSizes.spaceBtwSections,
                  ),
                  // Signupp Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: MahaColors.secondary,
                          side: const BorderSide(
                              width: 1, color: MahaColors.secondary)),
                      child: const Text(MahaTexts.createAccount),
                    ),
                  ),
                  const SizedBox(height: MahaSizes.spaceBtwSections,),
                  // Divider
                  FormDivider(dark: dark, dividerText: MahaTexts.orSignUpWith.capitalize!),
                  const SizedBox(height: MahaSizes.spaceBtwSections,),
                  // Social buttons
                  const SocialButtons()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
