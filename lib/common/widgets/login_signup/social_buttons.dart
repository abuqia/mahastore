import 'package:flutter/material.dart';
import 'package:mahastore/utils/constants/colors.dart';
import 'package:mahastore/utils/constants/image_strings.dart';
import 'package:mahastore/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MahaColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(MahaImages.google),
                width: MahaSizes.iconMd,
                height: MahaSizes.iconMd,
              )),
        ),
        const SizedBox(width: MahaSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MahaColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(MahaImages.facebook),
                width: MahaSizes.iconMd,
                height: MahaSizes.iconMd,
              )),
        ),
      ],
    );
  }
}