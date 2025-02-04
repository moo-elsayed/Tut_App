import 'dart:developer';

import 'package:advanced_flutter_project/presentation/onBoarding_view/widgets/onBoarding_body.dart';
import 'package:advanced_flutter_project/presentation/resources/images_manager.dart';
import 'package:advanced_flutter_project/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/color_manager.dart';
import '../resources/constants_manager.dart';
import '../resources/font_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/styles_manager.dart';
import 'classes/slider.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderList();
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  List<SliderObject> _getSliderList() => [
        SliderObject(
            title: AppStrings.onBoardingTitle1,
            subTitle: AppStrings.onBoardingSubTitle1,
            image: ImagesManager.onBoardingImage1),
        SliderObject(
            title: AppStrings.onBoardingTitle2,
            subTitle: AppStrings.onBoardingSubTitle2,
            image: ImagesManager.onBoardingImage2),
        SliderObject(
            title: AppStrings.onBoardingTitle3,
            subTitle: AppStrings.onBoardingSubTitle3,
            image: ImagesManager.onBoardingImage3),
        SliderObject(
            title: AppStrings.onBoardingTitle4,
            subTitle: AppStrings.onBoardingSubTitle4,
            image: ImagesManager.onBoardingImage4),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) {
          _currentIndex = value;
          setState(() {});
        },
        itemCount: _list.length,
        itemBuilder: (context, index) => OnboardingBody(
          sliderObject: _list[index],
        ),
      ),
      bottomSheet: Container(
        color: ColorManager.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    RouteGenerator.getRoute(
                      RouteSettings(name: Routes.loginScreen),
                    ),
                  );
                },
                child: Text(
                  AppStrings.skip,
                  style: Styles.styleMedium(
                    fontSize: FontSizes.s16,
                    color: ColorManager.primary,
                  ),
                ),
              ),
            ),
            Container(
              color: ColorManager.primary,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      int previousIndex = _getPreviousIndex();
                      _pageController.animateToPage(
                        previousIndex,
                        duration: Duration(
                            milliseconds: AppConstants.sliderAnimateDuration),
                        curve: Curves.linear,
                      );
                      setState(() {
                        _currentIndex = previousIndex;
                      });
                    },
                    child: SizedBox(
                      height: 28,
                      width: 28,
                      child: SvgPicture.asset(
                        ImagesManager.leftArrowIcon,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Row(
                    spacing: 19,
                    children: List.generate(
                      _list.length,
                      (index) {
                        return _currentIndex == index
                            ? SvgPicture.asset(ImagesManager.hollowCircleIcon)
                            : SvgPicture.asset(ImagesManager.solidCircleIcon);
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      int nextIndex = _getNextIndex();
                      _pageController.animateToPage(
                        nextIndex,
                        duration: Duration(
                            milliseconds: AppConstants.sliderAnimateDuration),
                        curve: Curves.linear,
                      );
                      setState(() {
                        _currentIndex = nextIndex;
                      });
                    },
                    child: SizedBox(
                      height: 28,
                      width: 28,
                      child: SvgPicture.asset(
                        ImagesManager.rightArrowIcon,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _getPreviousIndex() {
    int previousIndex = _currentIndex - 1;
    if (previousIndex == -1) previousIndex = _list.length - 1;
    log(previousIndex.toString());
    return previousIndex;
  }

  int _getNextIndex() {
    int nextIndex = _currentIndex + 1;
    if (nextIndex == _list.length) nextIndex = 0;
    log(nextIndex.toString());
    return nextIndex;
  }
}
