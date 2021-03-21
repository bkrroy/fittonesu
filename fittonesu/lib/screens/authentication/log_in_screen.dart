import 'package:fittonesu/buttons/input_password_text_widget.dart';
import 'package:fittonesu/buttons/input_text_widget.dart';
import 'package:fittonesu/buttons/red_button.dart';
import 'package:fittonesu/constant.dart';
import 'package:fittonesu/screens/userScreens/user_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogInScreen extends StatefulWidget {
  static const id = 'log_in_screen';

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  String emailId;
  String password;

  @override
  Widget build(BuildContext context) {
    final firebaseUer = context.read<User>();

    if(firebaseUer != null){
      return UserHomeScreen();
    }

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
                RedButtonWidget(navigatorText: UserHomeScreen.id, buttonText: 'Sign In',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}





