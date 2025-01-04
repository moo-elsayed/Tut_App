import 'package:advanced_flutter_project/presentation/color_manager.dart';
import 'package:advanced_flutter_project/presentation/font_manager.dart';
import 'package:advanced_flutter_project/presentation/styles_manager.dart';
import 'package:advanced_flutter_project/presentation/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // named constructor
  const MyApp._internal();

  static final MyApp _instance =
      MyApp._internal(); // singleTon or single instance

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.getAppTheme(),
    );
  }
}
