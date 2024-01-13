import 'package:flutter/material.dart';
import 'package:ourdoct/theme/custom_color.dart';

class OnboardDescriptionText extends StatelessWidget {
  final String description;

  const OnboardDescriptionText({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: CustomColor.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.21,
        ),
      ),
    );
  }
}
