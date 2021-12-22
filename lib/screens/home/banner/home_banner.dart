import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

import '../../../theme/custom_colors.dart';
import 'widgets/doctor_with_session.dart';
import 'widgets/emoji_in_container.dart';
import 'widgets/health_info_card.dart';
import 'widgets/health_statistics.dart';
import 'widgets/top_session/top_session_section.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 64.0, left: 24),
              child: Container(
                height: screenSize.height,
                width: screenSize.width / 2,
                decoration: BoxDecoration(
                  color: CustomColors.yellow.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset('designs/girl.png'),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const EmojiInContainer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                HealthStatistics(),
                                DoctorWithSession(),
                              ],
                            ),
                            const HealthInfoCard()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 56.0, left: 110),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenSize.width / 2 - 110,
                    child: Column(
                      children: [
                        Text(
                          'mental health is not a joke',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 64,
                          ),
                        ),
                        const SizedBox(
                          height: 31,
                        ),
                        Text(
                          "Health Retreats from world's largest network of certified, accredited, and experienced therapists online"
                              .toLowerCase(),
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('start journey'),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(UniconsLine.play_circle),
                        label: const Text('watch video'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  const TopSessionSection()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
