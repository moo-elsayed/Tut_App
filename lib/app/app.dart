import 'package:advanced_flutter_project/presentation/resources/routes_manager.dart';
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
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashScreen,
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.getAppTheme(),
    );
  }
}
