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
              leftURL: 'https://www.amazon.in/Nivia-Gym-Gloves-with-Wrist/dp/B01MXHYV53',
              rightImagePath: 'images/sportCloth.png',
              rightId: '0',
              rightPrice: '1500',
              rightProductName: 'Sports Bra',
              rightURL: 'https://www.amazon.in/Nike-Womens-Seamless-Sports-Bra/dp/B07NZC3S58',
            ),
            SizedBox(
              height: sizedBoxHeight,
            ),
            TwoProductDisplayWidget(
              leftImagePath: 'images/proteinPowderImage.png',
              leftId: '0',
              leftPrice: '600',
              leftProductName: 'Protein Powder',
              leftURL: 'https://www.amazon.in/Optimum-Nutrition-Standard-Protein-Powder/dp/B000QSNYGI',
              rightImagePath: 'images/shortsImage.png',
              rightId: '2',
              rightPrice: '200',
              rightProductName: 'Men\'s shorts',
              rightURL: 'https://www.decathlon.in/p/8512720/gym-wear-for-men/men-s-cotton-gym-short-regular-fit-100-black',
            ),
            SizedBox(
              height: sizedBoxHeight,
            ),
            TwoProductDisplayWidget(
              leftImagePath: 'images/dumbImage.png',
              leftId: '3',
              leftPrice: '600',
              leftProductName: 'Dumbbell',
              leftURL: 'https://www.amazon.in/Aurion-Hexagonal-Dumbbells-Professional-Exercise/dp/B07TRJ6HDV',
              rightImagePath: 'images/gogglesImage.png',
              rightId: '0',
              rightPrice: '200',
              rightProductName: 'Swimming Goggles',
              rightURL: 'https://www.decathlon.in/p/5998369/swimming-goggles-masks/swimming-goggles-xbase-l-clear-lenses-black',
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

