import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:twentyfour/screens/onboard_screen/on_boarding_page_widget.dart';

import '../../models/on_boarding_model.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: 'onboard.png',
        title: 'Travel primarily for your health',
        subTitle: 'We have one of the largest networks',
        counterText: '',
        bgColor: Colors.white,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: 'onboard.png',
        title: 'Heal in India along with travel',
        subTitle: '',
        counterText: '',
        bgColor: Colors.white,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: 'onboard.png',
        title: 'Heal in India along with travel',
        subTitle: 'We take care of you and your heath too',
        counterText: '3',
        bgColor: Colors.white,
      ),
    ),
  ];

  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
