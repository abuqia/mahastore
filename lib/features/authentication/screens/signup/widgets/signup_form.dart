import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mahastore/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:mahastore/utils/constants/colors.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
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
        const TermsAndConditionCheckbox(),
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
      ],
    ));
  }
}
