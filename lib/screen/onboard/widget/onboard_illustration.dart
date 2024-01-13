import 'package:flutter/material.dart';
import 'package:ourdoct/theme/custom_color.dart';

class OnboardIllustration extends StatelessWidget {
  final String image;

  const OnboardIllustration({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 365,
          height: 312,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: CustomColor.lightBlueColor,
          ),
        ),
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Image.asset(
            image,
            width: 326,
            height: 315,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
