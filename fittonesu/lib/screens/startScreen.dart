import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittonesu/screens/first_intro_slider.dart';
import 'package:fittonesu/screens/userScreens/user_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartScreen extends StatefulWidget {
  static const String id = 'start_screen';
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if(firebaseUser != null){
      return UserHomeScreen();
    }
    else{
      return FirstIntroSlider();
    }
  }
}