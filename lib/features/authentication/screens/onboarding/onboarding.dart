import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahastore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mahastore/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:mahastore/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:mahastore/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mahastore/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mahastore/utils/constants/colors.dart';
import 'package:mahastore/utils/constants/image_strings.dart';
import 'package:mahastore/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MahaImages.onBoardingImage1,
                title: MahaTexts.onBoardingTitle1,
                subTitle: MahaTexts.onBoardingSubTitle1,
                textColor: MahaColors.textWhite,
                bColor: MahaColors.onBoardingColor1,
              ),
              OnBoardingPage(
                image: MahaImages.onBoardingImage2,
                title: MahaTexts.onBoardingTitle2,
                subTitle: MahaTexts.onBoardingSubTitle2,
                textColor: MahaColors.textWhite,
                bColor: MahaColors.onBoardingColor2,
              ),
              OnBoardingPage(
                image: MahaImages.onBoardingImage3,
                title: MahaTexts.onBoardingTitle3,
                subTitle: MahaTexts.onBoardingSubTitle3,
                textColor: MahaColors.black,
                bColor: MahaColors.onBoardingColor3,
              ),
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),
          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          // Circular
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
