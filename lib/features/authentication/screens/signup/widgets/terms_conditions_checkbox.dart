import 'package:flutter/material.dart';
import 'package:mahastore/utils/constants/colors.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/constants/text_strings.dart';
import 'package:mahastore/utils/helpers/helper_functions.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MahaHelperFunctions.isDarkMode(context);
    
    return Row(
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
              text: MahaTexts.privacyPolicy,
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
              text: ' ${MahaTexts.and} ',
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
    );
  }
}