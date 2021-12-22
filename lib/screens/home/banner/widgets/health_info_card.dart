import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../../theme/custom_colors.dart';

class HealthInfoCard extends StatelessWidget {
  const HealthInfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.72,
      width: 482,
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Image.asset('designs/heart.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'heart rate',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '96 bpm',
                    style: GoogleFonts.dmSans(
                      color: const Color(0xFF606060),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image.asset('designs/yoga.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'exercise',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '1+ hours',
                    style: GoogleFonts.dmSans(
                      color: const Color(0xFF606060),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image.asset('designs/water.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'water',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '7 ltr',
                    style: GoogleFonts.dmSans(
                      color: const Color(0xFF606060),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
