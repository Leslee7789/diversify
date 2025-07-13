import 'package:diversify/constants/images.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: Text(
                'Your money deserves a growth \nplan ✨🗺️',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                    decoration: TextDecoration.none,
                    color: Colors.black,),
              ),
            ),
          ],
        ),
        Positioned(
            bottom: -120,
            left: 0,
            right: 0,
            top: 80,
            child: ClipRect(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width ,
                  child: Image.asset(
                    DiversifyImages.mascot,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
        ],
    ),
    );
  }
}
