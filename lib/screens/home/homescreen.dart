import 'package:flutter/material.dart';
import 'package:frontend_mental_health/appbar/app_bar_actions_web.dart';

import 'banner/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'designs/logo.png',
              ),
              const AppBarActionsWeb(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('start journey'),
              ),
            ],
          ),
        ),
      ),
      body: const HomeBanner(),
    );
  }
}
