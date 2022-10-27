import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Edukasi Tentang Gigi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(
                top: 25.0,
              ),
              width: width,
              child: const Text(
                'beritahu kami keluhan anda terhadap apa yang dirasakan pada gigi anda, dengan kami dari spesialis dokter gigi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              alignment: Alignment.topCenter,
              width: width * 0.85,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding2.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
