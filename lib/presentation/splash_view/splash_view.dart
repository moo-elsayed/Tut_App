import 'dart:async';
import 'package:advanced_flutter_project/presentation/resources/constants_manager.dart';
import 'package:advanced_flutter_project/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import '../resources/images_manager.dart';
import '../resources/color_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(
      Duration(seconds: AppConstants.splashDelay),
      () => _navigate(),
    );
  }

  _navigate() {
    Navigator.pushReplacement(
      context,
      RouteGenerator.getRoute(
        RouteSettings(name: Routes.onBoardingScreen),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Image(
          image: AssetImage(ImagesManager.splash),
        ),
      ),
    );
  }
}
