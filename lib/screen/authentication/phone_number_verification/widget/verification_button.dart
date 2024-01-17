import 'package:flutter/material.dart';
import 'package:ourdoct/screen/widget/custom_button.dart';

class VerificationButton extends CustomButton {
  VerificationButton({
    required super.onPressed,
    super.key,
  }) : super(widget: Text('Verification'.toUpperCase()), height: 43);
}
