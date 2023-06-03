import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_recipes/screens/on_boarding.dart';
import 'package:food_recipes/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const OnBoardingScreen(),


    );
  }
}
