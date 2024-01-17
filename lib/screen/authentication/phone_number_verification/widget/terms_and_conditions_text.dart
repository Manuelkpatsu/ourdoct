import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ourdoct/theme/custom_color.dart';

class TermsAndConditionsText extends StatelessWidget {
  final VoidCallback? onTap;

  const TermsAndConditionsText({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'By registering,\n',
          style: const TextStyle(
            color: CustomColor.deepGreyColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            height: 1.77,
          ),
          children: [
            const TextSpan(text: 'I will accept the user ', style: TextStyle(fontSize: 11)),
            TextSpan(
              text: 'Terms and Conditions',
              recognizer: TapGestureRecognizer()..onTap = onTap,
              style: const TextStyle(
                fontSize: 11,
                color: CustomColor.redAccentColor,
              ),
            ),
            const TextSpan(text: ' that apply to Ourdoct', style: TextStyle(fontSize: 11)),
          ],
        ),
      ),
    );
  }
}
