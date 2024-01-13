import 'package:flutter/material.dart';
import 'package:ourdoct/theme/custom_color.dart';

class OnboardTitle extends StatelessWidget {
  final String title;

  const OnboardTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 31),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: CustomColor.lightBlueColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: CustomColor.primaryColor,
          fontWeight: FontWeight.w600,
          height: 1.08,
          letterSpacing: -0.165,
          fontSize: 22,
        ),
      ),
    );
  }
}
