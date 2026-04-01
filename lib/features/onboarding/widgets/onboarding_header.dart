import 'package:evently_app/core/constants/app_assets.dart';
import 'package:evently_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Image.asset(
            AppAssets.eventlyIcon,
            color: Theme.of(context).colorScheme.primary,
            // height: 24,
            // width: 24,
          ),
          Text("Evently", style: AppStyles.jockeyOne36(context)),
        ],
      ),
    );
  }
}
