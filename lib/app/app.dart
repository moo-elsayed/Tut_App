import 'package:flutter/material.dart';
import '../presentation/resources/theme_manager.dart';

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
