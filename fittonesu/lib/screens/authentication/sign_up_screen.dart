import 'package:fittonesu/buttons/input_password_text_widget.dart';
import 'package:fittonesu/buttons/input_text_widget.dart';
import 'package:fittonesu/buttons/red_button.dart';
import 'package:fittonesu/constant.dart';
import 'package:fittonesu/screens/userScreens/user_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatelessWidget {

  static const id = 'sign_up';

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
              children: [
                Lottie.asset('lottieAnimation/authScreen.json'),
                InputTextWidget(hintText: 'Username'),
                SizedBox(height: 20,),
                InputTextWidget(hintText: 'Email Id',),
                SizedBox(height: 20,),
                InputPasswordTextWidget(hintText: 'Password'),
                SizedBox(height: 20,),
                InputTextWidget(hintText: 'Age'),
                SizedBox(height: 20,),
                InputTextWidget(hintText: 'Sex'),
                SizedBox(height: 20,),
                RedButtonWidget(navigatorText: UserHomeScreen.id, buttonText: 'Sign Up',),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
