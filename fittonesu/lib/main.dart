import 'package:fittonesu/screens/authentication/intermediate_screen.dart';
import 'package:fittonesu/screens/authentication/log_in_screen.dart';
import 'package:fittonesu/screens/authentication/sign_up_screen.dart';
import 'package:fittonesu/screens/first_intro_slider.dart';
import 'package:fittonesu/screens/second_intro_slider.dart';
import 'package:fittonesu/screens/startScreen.dart';
import 'package:fittonesu/screens/third_intro_slider.dart';
import 'package:fittonesu/screens/userScreens/user_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:fittonesu/authentication_screen.dart';

Future<void> main() async{
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(create: (context) => context.read<AuthenticationService>().authStateChanges),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          accentColor: Colors.red,
          brightness: Brightness.dark,
          primaryColor: Colors.amber,
        ),
        themeMode: ThemeMode.dark,
        initialRoute: StartScreen.id,//FirstIntroSlider.id,
        routes: {
          FirstIntroSlider.id: (context) => FirstIntroSlider(),
          SecondIntroSlider.id: (context) => SecondIntroSlider(),
          ThirdIntroScreen.id: (context) => ThirdIntroScreen(),
          InterMediateScreen.id: (context) => InterMediateScreen(),
          SignUp.id: (context) => SignUp(),
          LogInScreen.id: (context) => LogInScreen(),
          UserHomeScreen.id: (context) => UserHomeScreen(),
          StartScreen.id: (context) => StartScreen(),
        },
        home: FirstIntroSlider(),
      ),
    );
  }
}

