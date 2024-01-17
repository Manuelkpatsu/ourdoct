import 'package:flutter/material.dart';
import 'package:ourdoct/theme/custom_color.dart';

class LiveHealthyText extends StatelessWidget {
  const LiveHealthyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Live healthy with ourdoct',
      style: TextStyle(
        color: CustomColor.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 1.21,
      ),
    );
  }
}
