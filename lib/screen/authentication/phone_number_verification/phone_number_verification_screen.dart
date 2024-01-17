import 'package:flutter/material.dart';
import 'package:ourdoct/screen/authentication/widget/phone_number_text_field.dart';

import 'widget/live_healthy_text.dart';
import 'widget/safe_data_text.dart';
import 'widget/terms_and_conditions_text.dart';
import 'widget/verification_button.dart';
import 'widget/verification_image.dart';

class PhoneNumberVerificationScreen extends StatefulWidget {
  static const routeName = '/phone_number_verification';

  const PhoneNumberVerificationScreen({super.key});

  @override
  State<PhoneNumberVerificationScreen> createState() => _PhoneNumberVerificationScreenState();
}

class _PhoneNumberVerificationScreenState extends State<PhoneNumberVerificationScreen> {
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        children: [
          const SizedBox(height: 30),
          const Row(
            children: [
              VerificationImage(),
              SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [LiveHealthyText(), SafeDataText()],
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          PhoneNumberTextField(
            controller: phoneNumberController,
            onChanged: (phone) {
              setState(() {
                phoneNumberController.text = phone.completeNumber;
              });
            },
            onSaved: (phone) {
              setState(() {
                phoneNumberController.text = phone?.completeNumber ?? '';
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              TermsAndConditionsText(onTap: () {}),
              const SizedBox(height: 12),
              VerificationButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
