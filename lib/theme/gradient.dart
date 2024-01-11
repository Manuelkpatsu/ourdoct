import 'package:flutter/material.dart';

import 'custom_color.dart';

class CustomGradient {
  const CustomGradient._();

  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(1.7, 0),
    colors: [
      CustomColor.primaryColor,
      CustomColor.blueColor,
    ],
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(1.7, 0),
    colors: [
      CustomColor.primaryColor,
      CustomColor.blueColor,
    ],
  );
}
