import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';

class RedButtonWidget extends StatelessWidget {

  RedButtonWidget({@required this.navigatorText, this.buttonText });

  final buttonText;
  final navigatorText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Navigator.pushNamed(context, navigatorText);
        Navigator.pushNamedAndRemoveUntil(context, navigatorText, (Route<dynamic>route) => false);
      },
      child: Container(
        height: 45,
        width: 170,
        decoration: BoxDecoration(
          color: kRedButtonColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}