import 'package:flutter/material.dart';
import 'package:ourdoct/theme/custom_color.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback? onTap;
  final bool visible;

  const SkipButton({required this.onTap, required this.visible, super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Align(
        alignment: Alignment.topRight,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(4),
          splashColor: CustomColor.blueColor.withOpacity(0.2),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: Text(
              'Skip',
              style: TextStyle(
                color: CustomColor.blueColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.2,
                letterSpacing: -0.165,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
