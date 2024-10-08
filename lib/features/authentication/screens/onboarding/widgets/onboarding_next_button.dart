import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mahastore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mahastore/utils/constants/colors.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/device/device_utility.dart';
import 'package:mahastore/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MahaHelperFunctions.isDarkMode(context);

    return Positioned(
      right: MahaSizes.defaultSpace,
      bottom: MahaDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: const CircleBorder(side: BorderSide.none),
            backgroundColor: dark ? MahaColors.darkGrey : Colors.black),
        child: const Icon(
          Iconsax.arrow_right_3,
          color: MahaColors.white,
        ),
      ),
    );
  }
}
