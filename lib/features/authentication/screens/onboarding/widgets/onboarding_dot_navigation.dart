import 'package:flutter/material.dart';
import 'package:mahastore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mahastore/utils/constants/colors.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/device/device_utility.dart';
import 'package:mahastore/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MahaHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MahaDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MahaSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? MahaColors.light : MahaColors.dark, dotHeight: 6),
      ),
    );
  }
}