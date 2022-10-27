import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jabardentalcare/screen/onboarding/onboarding_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const JabarDentalCare());
}

class JabarDentalCare extends StatelessWidget {
  const JabarDentalCare({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jabar Dental Care',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const OnboardingScreen(),
    );
  }
}
