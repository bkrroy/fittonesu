import 'package:fittonesu/screens/authentication/intermediate_screen.dart';
import 'package:fittonesu/screens/authentication/log_in_screen.dart';
import 'package:fittonesu/screens/authentication/sign_up_screen.dart';
import 'package:fittonesu/screens/first_intro_slider.dart';
import 'package:fittonesu/screens/second_intro_slider.dart';
import 'package:fittonesu/screens/third_intro_slider.dart';
import 'package:fittonesu/screens/userScreens/user_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.red,
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
      ),
      themeMode: ThemeMode.dark,
      initialRoute: UserHomeScreen.id,//FirstIntroSlider.id,
      routes: {
        FirstIntroSlider.id: (context) => FirstIntroSlider(),
        SecondIntroSlider.id: (context) => SecondIntroSlider(),
        ThirdIntroScreen.id: (context) => ThirdIntroScreen(),
        InterMediateScreen.id: (context) => InterMediateScreen(),
        SignUp.id: (context) => SignUp(),
        LogInScreen.id: (context) => LogInScreen(),
        UserHomeScreen.id: (context) => UserHomeScreen(),
      },
      home: FirstIntroSlider(),
    );
  }
}

