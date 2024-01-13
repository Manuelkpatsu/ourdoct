import 'package:flutter/material.dart';
import 'package:ourdoct/model/onboard_data.dart';

import 'onbaord_title.dart';
import 'onboard_description_text.dart';
import 'onboard_illustration.dart';

class OnboardTile extends StatelessWidget {
  final OnboardData data;

  const OnboardTile({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardIllustration(image: data.image),
        OnboardTitle(title: data.title),
        const SizedBox(height: 30),
        OnboardDescriptionText(description: data.description),
      ],
    );
  }
}
