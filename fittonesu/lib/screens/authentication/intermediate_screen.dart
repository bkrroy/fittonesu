import 'package:fittonesu/buttons/red_button.dart';
import 'package:fittonesu/constant.dart';
import 'package:fittonesu/screens/authentication/log_in_screen.dart';
import 'package:fittonesu/screens/authentication/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class InterMediateScreen extends StatelessWidget {
  static const id = 'intermediate_screen';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Lottie.asset('lottieAnimation/yogaOne.json'),
            ),
            Container(
              height: 29,
              width: 257,
              child: Text(
                'Change starts here',
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: kRedButtonColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 229,
              child: Text(
                'It is health that is the real wealth, and not pieces of gold and silver',
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF867F7F),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.15,
            ),
            RedButtonWidget(buttonText: 'Sign Up', navigatorText: SignUp.id,),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: GoogleFonts.raleway(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, LogInScreen.id);
                  },
                  child: Container(
                    child: Text(
                      'Log in',
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: kRedButtonColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
