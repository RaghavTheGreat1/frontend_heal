import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../mentor_of_month.dart';

class TopSessionSection extends StatelessWidget {
  const TopSessionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'top session -',
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        const MentorOfMonth(),
      ],
    );
  }
}
