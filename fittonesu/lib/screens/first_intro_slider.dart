import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstIntroSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000022),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Lottie.asset('lottieAnimation/yogaOne.json'),
        ),
      ),
    );
  }
}
