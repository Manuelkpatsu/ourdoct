import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:ourdoct/theme/custom_color.dart';

class PhoneNumberTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(PhoneNumber)? onChanged;
  final void Function(PhoneNumber?)? onSaved;
  final FutureOr<String?> Function(PhoneNumber?)? validator;

  const PhoneNumberTextField({
    required this.controller,
    required this.onChanged,
    this.onSaved,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      validator: validator,
      decoration: const InputDecoration(
        hintText: 'Phone Number',
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.primaryColor),
        ),
      ),
      initialCountryCode: 'GH',
      onChanged: onChanged,
      onSaved: onSaved,
      dropdownIconPosition: IconPosition.trailing,
      dropdownTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: CustomColor.dropdownColor,
        height: 1.08,
      ),
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: CustomColor.dropdownColor,
        height: 1.08,
      ),
    );
  }
}
