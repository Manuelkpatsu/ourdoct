import 'package:flutter/material.dart';
import 'package:ourdoct/theme/custom_color.dart';

class VerificationImage extends StatelessWidget {
  const VerificationImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
            color: CustomColor.lightBlueColor,
            shape: BoxShape.circle,
          ),
        ),
        Positioned(
          top: 1,
          left: 4,
          child: Image.asset(
            'assets/images/verification.png',
            height: 92,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
