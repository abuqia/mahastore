import 'package:flutter/material.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.textColor,
    required this.bColor,
  });

  final String image, title, subTitle;
  final Color textColor, bColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: bColor),
      child: Padding(
        padding: const EdgeInsets.all(MahaSizes.defaultSpace),
        child: Column(
          children: [
            Image(
                width: MahaHelperFunctions.screenWidth() * 0.8,
                height: MahaHelperFunctions.screenHeight() * 0.6,
                image: AssetImage(image)),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: textColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: MahaSizes.spaceBtwItems,
            ),
            Text(
              subTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: textColor),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}