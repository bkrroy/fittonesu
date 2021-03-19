import 'package:fittonesu/buttons/input_password_text_widget.dart';
import 'package:fittonesu/buttons/input_text_widget.dart';
import 'package:fittonesu/buttons/red_button.dart';
import 'package:fittonesu/constant.dart';
import 'package:fittonesu/screens/userScreens/user_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LogInScreen extends StatelessWidget {
  static const id = 'log_in_screen';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('lottieAnimation/authScreen.json'),
                SizedBox(
                  height: screenHeight*0.03,
                ),
                InputTextWidget(
                  hintText: 'Email Id',
                ),
                SizedBox(height: 30,),
                InputPasswordTextWidget(hintText: 'Password'),
                SizedBox(height: 30,),
                RedButtonWidget(navigatorText: UserHomeScreen.id, buttonText: 'Sing In',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}





