import 'package:advanced_flutter_project/presentation/resources/images_manager.dart';
import 'package:advanced_flutter_project/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/color_manager.dart';

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
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark),
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
    );
  }
}

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key, required this.sliderObject});

  final SliderObject sliderObject;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            sliderObject.title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 35,
          ),
          SvgPicture.asset(sliderObject.image),
          SizedBox(
            height: 123,
          ),
        ],
      ),
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(
      {required this.title, required this.subTitle, required this.image});
}
