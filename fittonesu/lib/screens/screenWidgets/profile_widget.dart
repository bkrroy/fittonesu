import 'package:fittonesu/constant.dart';
import 'package:fittonesu/screens/barGraphWidget/bar_graph_widget.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatelessWidget {
  final double sizedBozHeight = 50;
  final double inBetweenTextHeight = 10;

  final TextStyle headingTextStyle = GoogleFonts.raleway(
    fontWeight: FontWeight.w500,
    fontSize: 22.0,
  );

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PersonInfoWidget(),
              SizedBox(
                height: sizedBozHeight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HWAWidget(
                    topText: '165.0',
                    bottomText: 'Height',
                    imagePath: 'images/heightImage.png',
                  ),
                  HWAWidget(
                    topText: '72 kg',
                    bottomText: 'Weight',
                    imagePath: 'images/weightImage.png',
                  ),
                  HWAWidget(
                    topText: '27 Year',
                    bottomText: 'Age',
                    imagePath: 'images/ageImage.png',
                  ),
                ],
              ),
              SizedBox(
                height: sizedBozHeight,
              ),
              Container(
                height: 25,
                width: 187,
                child: Text(
                  'Calories Burned',
                  style: headingTextStyle,
                ),
              ),
              SizedBox(
                height: inBetweenTextHeight,
              ),
              LineChartSample2(),
              SizedBox(
                height: sizedBozHeight,
              ),
              Container(
                height: 25,
                width: 127,
                child: Text(
                  'My Activity',
                  style: headingTextStyle,
                ),
              ),
              SizedBox(
                height: inBetweenTextHeight,
              ),
              MyActivityWidget(
                activity: 'Waling/Running',
                achievement: '10 km',
              ),
              SizedBox(
                height: inBetweenTextHeight,
              ),
              MyActivityWidget(
                activity: 'Swimming',
                achievement: '1 hour',
              ),
              SizedBox(
                height: inBetweenTextHeight,
              ),
              Center(
                child: Container(
                  height: 42,
                  width: 174,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD12F),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Add Activity',
                      style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizedBozHeight,
              ),
              Center(
                child: Container(
                  height: 33.42,
                  width: 119,
                  decoration: BoxDecoration(
                    color: kRedButtonColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Out',
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizedBozHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// This widget is used to track the activity
class MyActivityWidget extends StatelessWidget {

  MyActivityWidget({
    this.activity,
    this.achievement
});

  final String activity;
  final String achievement;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xFF373856),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              activity,
              style: GoogleFonts.raleway(fontSize: 16.0),
            ),
            Text(
              achievement,
              style: GoogleFonts.raleway(fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}

class PersonInfoWidget extends StatelessWidget {
  final double circleRadius = 54;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: circleRadius,
          backgroundColor: kRedButtonColor,
          child: CircleAvatar(
            radius: circleRadius - 4,
            backgroundColor: kBackgroundColor,
            child: Image.asset(
              'images/profilePhoto.png',
            ),
          ),
        ),
        Column(
          children: [
            Container(
              child: Text(
                'Vatsal Verma',
                style: GoogleFonts.raleway(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                'Rae Bareli',
                style: GoogleFonts.raleway(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// This is for the widget will store Height , Weight and Age
class HWAWidget extends StatelessWidget {
  HWAWidget({this.topText, this.bottomText, this.imagePath});

  final String topText;
  final String bottomText;
  final String imagePath;
  final double widgetHeight = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetHeight,
      width: 96,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: widgetHeight,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF32324E),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  topText,
                  style: GoogleFonts.raleway(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Text(
                  bottomText,
                  style: GoogleFonts.raleway(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
