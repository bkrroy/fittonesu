import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fittonesu/constant.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittonesu/authentication_screen.dart';

/// This is the input text for normal containers and all
class InputTextWidget extends StatelessWidget {
  InputTextWidget({@required this.hintText, this.id});

  final hintText;

  /// the id would be used for knowing which input field is used
  final id;

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
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 20.0),
          ),
          onChanged: (String value){
            context.read<AuthenticationService>().getEmail(emailID: value);
          },
        ),
      ),
    );
  }
}