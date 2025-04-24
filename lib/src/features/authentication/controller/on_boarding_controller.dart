import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../../routing/routes.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pagesCount = 5;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void skip() {
    controller.jumpToPage(page: pagesCount - 1);
  }

  void nextPage() {
    int nextIndex = controller.currentPage + 1;
    if (nextIndex == pagesCount) {
      Get.offNamed(MyRoutes.secondRoute);
    } else {
      controller.animateToPage(page: nextIndex);
    }
  }
}
