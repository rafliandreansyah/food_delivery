import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/constants/page.dart';
import 'package:food_delivery/src/presentation/pages/login/login_page.dart';
import 'package:food_delivery/src/presentation/pages/onboarding/onboarding_page.dart';
import 'package:food_delivery/src/presentation/pages/splash_screen_page.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "Noto Sans", "Noto Sans");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreenPage(),
        loginPage: (context) => const LoginPage(),
        onboardingPage: (context) => const OnBoardingPage(),
      },
    );
  }
}
