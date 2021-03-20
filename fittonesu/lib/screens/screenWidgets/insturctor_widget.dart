import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Instructors',
              style: GoogleFonts.raleway(
                fontSize: 28.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
