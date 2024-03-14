import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:store_app/features/authentication/controllers/on_bording_controller.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/utils/device/device_utility.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBordingController());
    final dark =MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.Pagecontroller,
            onPageChanged: controller.UpdatePageIndicator,
            children: const [
              OnboardingPage(
                image: MyImages.onBoardingImage1,
                title: MyTexts.onBoardingTitle1,
                subtitle: MyTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: MyImages.onBoardingImage2,
                title: MyTexts.onBoardingTitle2,
                subtitle: MyTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: MyImages.onBoardingImage3,
                title: MyTexts.onBoardingTitle3,
                subtitle: MyTexts.onBoardingSubTitle3,
              ),

            ],

          ),
          const SkipButton(),
          const OnboardingNavigation(),
          Positioned(
            bottom: MYDeviceUtils.getBottomNavigationBarHeight(),
            right: MySizes.defaultSpace,
            child: ElevatedButton(
              onPressed: () {
                OnBordingController.instance.NextPage();
              },
              style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor: dark?MyColors.primary:Colors.black),
              child: const Icon(Iconsax.arrow_right_3 ),
            ),
          )
        ],
      ),
    );
  }
}

class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBordingController());
    final dark = MyHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: MYDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: MySizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.Pagecontroller,
          onDotClicked: controller.DotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? MyColors.light : MyColors.dark,
              dotHeight: 6),
        ));
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MYDeviceUtils.getAppBarHeight(),
        right: MySizes.defaultSpace,
        child: TextButton(
            onPressed: () {
              OnBordingController.instance.SkipPage();
            },
            child: const Text("Skip")));
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: MyHelperFunctions.screenWidth() * 0.8,
              height: MyHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: MySizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
