import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fittonesu/constant.dart';


/// This widget would be used for the input text for the password
class InputPasswordTextWidget extends StatelessWidget {

  InputPasswordTextWidget({@required this.hintText, this.id});

  final String hintText;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: kRedButtonColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}