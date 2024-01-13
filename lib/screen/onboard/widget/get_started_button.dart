import 'package:flutter/material.dart';
import 'package:ourdoct/screen/widget/custom_button.dart';

class GetStartedButton extends CustomButton {
  const GetStartedButton({
    required super.onPressed,
    super.key,
  }) : super(widget: const Text('Get Started'), width: 240);
}
