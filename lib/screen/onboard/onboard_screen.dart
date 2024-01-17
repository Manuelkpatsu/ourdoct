import 'package:flutter/material.dart';
import 'package:ourdoct/model/onboard_data.dart';
import 'package:ourdoct/screen/authentication/phone_number_verification/phone_number_verification_screen.dart';
import 'package:ourdoct/theme/custom_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widget/get_started_button.dart';
import 'widget/onboard_tile.dart';
import 'widget/skip_button.dart';

class OnboardScreen extends StatefulWidget {
  static const routeName = '/onboard';

  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  final List<OnboardData> _data = [
    const OnboardData(
      title: 'Ready to serve',
      image: 'assets/images/onboard-1.png',
      description: 'The most complete health solution you need in one hand',
    ),
    const OnboardData(
      title: 'Booster vaccines covid-19',
      image: 'assets/images/onboard-2.png',
      description:
          'We have prepared a vaccine for those of you who have not been vaccinated to avoid exposure to Covid-19',
    ),
    const OnboardData(
      title: 'We have quality medicine',
      image: 'assets/images/onboard-3.png',
      description: 'Ourdoct provides quality medicines for those of you who want to buy online',
    ),
  ];
  int currentPage = 0;
  bool get lastPage => currentPage == _data.length - 1;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              SkipButton(
                visible: !lastPage,
                onTap: () => _controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: _onPageChanged,
                  children: _data.map((onboardData) => OnboardTile(data: onboardData)).toList(),
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: _data.length,
                effect: const WormEffect(
                  spacing: 8,
                  dotHeight: 13,
                  dotWidth: 13,
                  dotColor: CustomColor.dotColor,
                  activeDotColor: CustomColor.blueColor,
                  type: WormType.underground,
                ),
                onDotClicked: (index) => _controller.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                ),
              ),
              const SizedBox(height: 30),
              GetStartedButton(
                onPressed: () => Navigator.of(context).pushReplacementNamed(
                  PhoneNumberVerificationScreen.routeName,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
