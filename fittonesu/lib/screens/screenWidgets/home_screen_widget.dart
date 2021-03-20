import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePageWidget extends StatelessWidget {
  final double sizedBoxHeight = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 43.09,
                  width: 43.09,
                  child: Image.asset('images/appLogo.png'),
                ),
                Container(
                  height: 39,
                  width: 148,
                  child: Text(
                    'FITTONESU',
                    style: GoogleFonts.oregano(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 33.09,
                  width: 33.09,
                  child: Image.asset('images/plusSquare.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      HomePostWidget(
                        userCaption: 'Just Practice Hard Enough to be part of the unknown',
                        userName: 'V A T S A L A S T A V',
                        lottiePath: 'lottieAnimation/lunge.json',
                      ),
                      SizedBox(
                        height: sizedBoxHeight,
                      ),
                      HomePostWidget(
                        userName: 'unknownPathWalker',
                        userCaption: 'The walk till eternity is the walk of life',
                        lottiePath: 'lottieAnimation/crunches.json',
                      ),
                      SizedBox(
                        height: sizedBoxHeight,
                      ),
                      HomePostWidget(
                        userName: 'TheToughGuy',
                        userCaption: 'It is better to have some motivation everyday than to have none',
                        lottiePath: 'lottieAnimation/inchWorm.json',
                      ),
                      SizedBox(
                        height: sizedBoxHeight,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePostWidget extends StatelessWidget {

  HomePostWidget({this.userName, this.userCaption, this.lottiePath});

  final String userName;
  final String userCaption;
  final String lottiePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 304,
      width: 358,
      decoration: BoxDecoration(
        color: Color(0xFF373856),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Text(
                userName,
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 202,
            width: 358,
            child: Lottie.asset(lottiePath, fit: BoxFit.fill),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Text(
                userCaption,
                style: GoogleFonts.raleway(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
