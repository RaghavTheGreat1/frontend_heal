import 'package:flutter/material.dart';

import 'package:unicons/unicons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:frontend_mental_health/theme/custom_colors.dart';

class HealthStatistics extends StatelessWidget {
  const HealthStatistics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 275,
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'health statistics',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      CustomColors.mangoYellow,
                    ),
                    textStyle: MaterialStateProperty.all(
                      GoogleFonts.dmSans(
                        fontSize: 16,
                      ),
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    ),
                  ),
                  icon: Text(
                    'weekly',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  label: const Icon(
                    UniconsLine.angle_down,
                  ),
                ),
              ],
            ),
            Image.asset('designs/chart.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: ['s', 'm', 't', 'w', 't', 'f', 's']
                  .map(
                    (e) => Text(
                      e,
                      style: GoogleFonts.dmSans(
                        color: const Color(0xFF606060),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
