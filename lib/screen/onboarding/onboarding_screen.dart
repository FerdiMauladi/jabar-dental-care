import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jabardentalcare/screen/loginregister/loginregister_screen.dart';
import 'package:jabardentalcare/screen/onboarding/onboarding_one_screen.dart';
import 'package:jabardentalcare/screen/onboarding/onboarding_third_screen.dart';
import 'package:jabardentalcare/screen/onboarding/onboarding_two_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var _controller = PageController();
  int? _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: height * 0.06,
        ),
        child: Column(
          children: [
            Flexible(
              flex: 4,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: const [
                  OnboardingOneScreen(),
                  OnboardingTwoScreen(),
                  OnboardingThirdScreen(),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(
                  left: 15.0,
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      onDotClicked: (index) => _controller.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      ),
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Color(0xFF0C3DF3),
                        dotColor: Colors.grey,
                        expansionFactor: 2.5,
                        dotHeight: 14,
                      ),
                    ),
                    Container(
                      height: 45,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0C3DF3),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              bottomLeft: Radius.circular(14.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                          );
                          if (_currentPage == 2) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const LoginRegisterScreen(),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            _currentPage == 2 ? 'Masuk' : 'Selanjutnya',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
