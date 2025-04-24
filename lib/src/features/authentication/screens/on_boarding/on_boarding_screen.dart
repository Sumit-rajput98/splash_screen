import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:project_1/src/constants/colors.dart';
import 'package:project_1/src/constants/image_strings.dart';
import 'package:project_1/src/constants/text_string.dart';
import 'package:project_1/src/features/authentication/models/on_boarding_model/on_boarding_model.dart';
import 'package:project_1/src/features/authentication/screens/on_boarding/on_boarding_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final onboardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingWidget(
        model: OnBoardingModel(
          title: onBoardingTitle1,
          image: onBoardingImage1,
          subTitle: onBoardingSubTitle1,
          counter: counter1,
          bgColor: tOnBoardingPage1Color,
          height: size.height,
        ),
      ),
      OnBoardingWidget(
        model: OnBoardingModel(
          title: onBoardingTitle2,
          image: onBoardingImage2,
          subTitle: onBoardingSubTitle2,
          counter: counter2,
          bgColor: tOnBoardingPage2Color,
          height: size.height,
        ),
      ),
      OnBoardingWidget(
        model: OnBoardingModel(
          title: onBoardingTitle3,
          image: onBoardingImage3,
          subTitle: onBoardingSubTitle3,
          counter: counter3,
          bgColor: tOnBoardingPage3Color,
          height: size.height,
        ),
      ),
      OnBoardingWidget(
        model: OnBoardingModel(
          title: onBoardingTitle4,
          image: onBoardingImage4,
          subTitle: onBoardingSubTitle4,
          counter: counter4,
          bgColor: tOnBoardingPage4Color,
          height: size.height,
        ),
      ),
      OnBoardingWidget(
        model: OnBoardingModel(
          title: onBoardingTitle5,
          image: onBoardingImage5,
          subTitle: onBoardingSubTitle5,
          counter: counter5,
          bgColor: tOnBoardingPage5Color,
          height: size.height,
        ),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              pages: pages,
              liquidController: onboardingController.controller,
              onPageChangeCallback: onboardingController.onPageChanged,
              slideIconWidget: const Icon(Icons.arrow_forward_ios),
              enableSideReveal: true,
            ),
            Positioned(
              bottom: 80,
              child: OutlinedButton(
                onPressed: onboardingController.nextPage,
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  padding: const EdgeInsets.all(20),
                  foregroundColor: Colors.white,
                  shape: const CircleBorder(),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 20,
              child: TextButton(
                onPressed: onboardingController.skip,
                child: const Text("Skip", style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Positioned(
              bottom: 20,
              child: Obx(
                    () => AnimatedSmoothIndicator(
                  activeIndex: onboardingController.currentPage.value,
                  count: onboardingController.pagesCount,
                  effect: const WormEffect(
                    dotHeight: 5,
                    activeDotColor: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
