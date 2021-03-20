import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoProductDisplayWidget extends StatelessWidget {
  TwoProductDisplayWidget({
    this.leftImagePath,
    this.rightImagePath,
    this.leftId = '0',
    this.rightId = '0',
    this.leftProductName,
    this.rightProductName,
    this.leftPrice,
    this.rightPrice,
  });

  final String leftImagePath;
  final String rightImagePath;
  final String leftId;
  final String rightId;
  final String leftProductName;
  final String rightProductName;
  final String leftPrice;
  final String rightPrice;

  String backgroundPathLeft() {
    if (leftId == '0') {
      return '';
    } else if (leftId == '1') {
      return 'images/sportsBG1.png';
    } else if (leftId == '2') {
      return 'images/sportsBG2.png';
    } else {
      return 'images/sportsBG3.png';
    }
  }

  String backgroundPathRight() {
    if (rightId == '0') {
      return '';
    } else if (rightId == '1') {
      return 'images/sportsBG1.png';
    } else if (rightId == '2') {
      return 'images/sportsBG2.png';
    } else {
      return 'images/sportsBG3.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 160,
          width: 160,
          child: Center(
            child: Stack(
              children: [
                backgroundPathLeft() != '0'
                    ? Image.asset(
                        backgroundPathLeft(),
                        fit: BoxFit.cover,
                      )
                    : Container(),
                Center(
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 58,
                          width: 58,
                          child: Image.asset(
                            leftImagePath,
                          ),
                        ),
                        Container(
                          height: 20,
                          child: Text(
                            leftProductName,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Container(
                          height: 14,
                          child: Text(
                            leftPrice,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 160,
          width: 160,
          child: Center(
            child: Stack(children: [
              backgroundPathRight() != '0'
                  ? Image.asset(
                      backgroundPathRight(),
                      fit: BoxFit.cover,
                    )
                  : Container(),
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 58,
                      width: 58,
                      child: Image.asset(
                        rightImagePath,
                      ),
                    ),
                    Container(
                      child: Text(
                        rightProductName,
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Text(
                        rightPrice,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
