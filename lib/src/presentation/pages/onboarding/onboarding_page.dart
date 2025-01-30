import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/assets/assets.gen.dart';
import 'package:food_delivery/src/core/constants/page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageViewController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  _handlePageViewChanged(int currentPageIndex) {
    print(currentPageIndex);
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  _updateCurrentPageIndex(int index) {
    if (_currentPageIndex == 1) {
      Navigator.of(context).pushReplacementNamed(loginPage);
    } else {
      _pageViewController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: _pageViewController,
              onPageChanged: _handlePageViewChanged,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        Assets.images.bgOnboarding1.path,
                        width: double.infinity,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Find your Comfort Food here',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: 250,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Here You Can find a chef or dish for every taste and color. Enjoy!',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        Assets.images.bgOnboarding2.path,
                        width: double.infinity,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        width: 300,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Food Ninja is Where Your Comfort Food Lives',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: 250,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Enjoy a fast and smooth food delivery at your doorstep',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                _updateCurrentPageIndex(_currentPageIndex + 1);
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF53E88B),
                      Color(0xFF15BE77),
                    ],
                  ),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
