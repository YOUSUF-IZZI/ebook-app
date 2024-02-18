import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import 'animated_splash_screen_text.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        const SizedBox(height: 10),
        const AnimatedSplashScreenText()
      ],
    );
  }
}
