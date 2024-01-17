import 'package:flutter/material.dart';
import 'package:ourdoct/theme/custom_color.dart';

class SafeDataText extends StatelessWidget {
  const SafeDataText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Your data is safe with us',
      style: TextStyle(
        color: CustomColor.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.21,
      ),
    );
  }
}
