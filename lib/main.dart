import 'package:flutter/material.dart';
import 'package:ourdoct/theme/custom_theme.dart';

import 'screen/splash/splash_screen.dart';
import 'router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: router.generateRoute,
    );
  }
}
