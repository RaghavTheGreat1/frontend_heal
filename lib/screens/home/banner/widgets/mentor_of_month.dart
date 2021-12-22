import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../../theme/custom_colors.dart';

class MentorOfMonth extends StatelessWidget {
  const MentorOfMonth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      width: 330,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                height: 117,
                width: 330,
                decoration: const BoxDecoration(
                  color: CustomColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: CustomColors.yellow,
                                borderRadius:
                                    BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                                'designs/doctor.png'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Column(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'nova shirley',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Best metor of the month'
                                    .toLowerCase(),
                                style: GoogleFonts.dmSans(
                                  color:
                                      const Color(0xFF606060),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: CustomColors.mangoYellow,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.all(2.0),
                              child: Text(
                                '+500 successful sessions',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
