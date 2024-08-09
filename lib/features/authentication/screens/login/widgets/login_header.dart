import 'package:flutter/material.dart';
import 'package:mahastore/utils/constants/image_strings.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image(
            height: 200,
            image: AssetImage(dark
                ? MahaImages.darkAppLogo
                : MahaImages.lightAppLogo),
          ),
        ),
        Text(
          MahaTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: MahaSizes.sm),
        Text(
          MahaTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}