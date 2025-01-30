import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/assets/assets.gen.dart';
import 'package:food_delivery/src/core/constants/page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(onboardingPage);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            Assets.images.bgLogin.path,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.icons.icLogo.path,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
