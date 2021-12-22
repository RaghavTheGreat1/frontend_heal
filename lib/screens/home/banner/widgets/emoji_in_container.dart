import 'package:flutter/material.dart';

import '../../../../theme/custom_colors.dart';

class EmojiInContainer extends StatelessWidget {
  const EmojiInContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Transform.rotate(
          angle: 90 - 27,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: CustomColors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text(
                '😴',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
