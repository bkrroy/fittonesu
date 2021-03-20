import 'package:fittonesu/screens/widgets/two_product_display_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportsWidget extends StatelessWidget {
  final double sizedBoxHeight = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 47,
              width: 228,
              child: Text(
                'Sports shop',
                style: GoogleFonts.raleway(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: sizedBoxHeight,
            ),
            TwoProductDisplayWidget(
              leftImagePath: 'images/glovesImage.png',
              leftId: '1',
              leftPrice: '60',
              leftProductName: 'Gym Gloves',
              rightImagePath: 'images/sportCloth.png',
              rightId: '0',
              rightPrice: '1500',
              rightProductName: 'Sports Bra',
            ),
            SizedBox(
              height: sizedBoxHeight,
            ),
            TwoProductDisplayWidget(
              leftImagePath: 'images/proteinPowderImage.png',
              leftId: '0',
              leftPrice: '600',
              leftProductName: 'Protein Powder',
              rightImagePath: 'images/shortsImage.png',
              rightId: '2',
              rightPrice: '200',
              rightProductName: 'Men\'s shorts',
            ),
            SizedBox(
              height: sizedBoxHeight,
            ),
            TwoProductDisplayWidget(
              leftImagePath: 'images/dumbImage.png',
              leftId: '3',
              leftPrice: '600',
              leftProductName: 'Dumbbell',
              rightImagePath: 'images/gogglesImage.png',
              rightId: '0',
              rightPrice: '200',
              rightProductName: 'Swimming Goggles',
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

