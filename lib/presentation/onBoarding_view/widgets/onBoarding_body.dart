import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../classes/slider.dart';

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
          SizedBox(
            height: 9,
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
