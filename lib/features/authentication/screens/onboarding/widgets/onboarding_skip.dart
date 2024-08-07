import 'package:flutter/material.dart';
import 'package:mahastore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mahastore/utils/constants/sizes.dart';
import 'package:mahastore/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MahaDeviceUtils.getAppBarHeight(),
      right: MahaSizes.defaultSpace,
      child: TextButton(
        child: const Text('Skip'),
        onPressed: () => OnBoardingController.instance.skipPage(),
      ),
    );
  }
}