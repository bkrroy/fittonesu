import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 47,
                  width: 142,
                  child: Text(
                    'Friends',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
