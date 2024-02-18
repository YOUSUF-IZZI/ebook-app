import 'package:flutter/material.dart';


class AnimatedSplashScreenText extends StatefulWidget {
  const AnimatedSplashScreenText({super.key});
  @override
  State<AnimatedSplashScreenText> createState() => _AnimatedSplashScreenTextState();
}

class _AnimatedSplashScreenTextState extends State<AnimatedSplashScreenText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..forward();

    _scaleAnimation = Tween<double>(begin: 0.2, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: const Text(
          'Your free eBook station',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}