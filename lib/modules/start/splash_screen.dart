import 'package:diversify/app_routes.dart';
import 'package:diversify/constants/colors.dart';
import 'package:diversify/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Setup animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Create a curved animation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ).drive(Tween<double>(begin: 0.9, end: 1.1));

    // Make the animation repeat in both directions
    _controller.repeat(reverse: true);

    Future.delayed(const Duration(seconds: 5), () {
      Get.offAllNamed(AppRoutes.onboard);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _animation.value,
                  child: Image.asset(
                    DiversifyIcons.logo,
                    width: 80,
                    height: 80,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Diversify',
              style: TextStyle(
                fontSize: 42,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: DiversifyColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}