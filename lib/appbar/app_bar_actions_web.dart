import 'package:flutter/material.dart';

import 'package:unicons/unicons.dart';

import 'package:frontend_mental_health/theme/custom_colors.dart';
import 'package:frontend_mental_health/appbar/widgets/app_bar_action_button.dart';

class AppBarActionsWeb extends StatelessWidget {
  const AppBarActionsWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarActionButton(
          label: 'home',
          icon: const SizedBox.shrink(),
          onPressed: () {},
        ),
        AppBarActionButton(
          label: 'thoughts',
          icon: const Icon(
            UniconsLine.arrow_down,
            color: CustomColors.yellow,
          ),
          onPressed: () {},
        ),
        AppBarActionButton(
          label: 'resources',
          icon: const SizedBox.shrink(),
          onPressed: () {},
        ),
        AppBarActionButton(
          label: 'contact',
          icon: const SizedBox.shrink(),
          onPressed: () {},
        ),
      ],
    );
  }
}
