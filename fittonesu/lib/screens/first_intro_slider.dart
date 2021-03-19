import 'package:fittonesu/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FirstIntroSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('images/introBG.png'),
          ),
          Positioned(
            child: Container(
              height: 500,
              width: 500,
              child: Lottie.asset('lottieAnimation/introOne.json'),
            ),
          ),
          // This is for the yellow buttons and all
          Positioned(
            bottom: 220,
            left: MediaQuery.of(context).size.width * 0.4,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Color(0xFFFFD12F),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Color(0xFFD11818),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Color(0xFFD11818),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 105,
            left: MediaQuery.of(context).size.width * 0.20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 33,
                  child: Text(
                    'Stay Healthy',
                    style: GoogleFonts.raleway(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 28,
                  width: 229,
                  child: Text(
                    'Control on what goes inside',
                    style: GoogleFonts.raleway(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF867F7F)
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: MediaQuery.of(context).size.width*0.35,
            child: Container(
              height: 45.25,
              width: 118,
              decoration: BoxDecoration(
                color: kRedButtonColor,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Text(
                  'Skip',
                  style: GoogleFonts.raleway(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
