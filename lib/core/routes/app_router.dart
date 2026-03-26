import 'package:evently_app/core/routes/app_routes.dart';
import 'package:evently_app/features/layout/screens/layout_screen.dart';
import 'package:evently_app/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/screens/onboarding_start_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboardingStart:
        return MaterialPageRoute(
          builder: (_) => const OnboardingStartScreen(),
          settings: settings,
        );
      case AppRoutes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
          settings: settings,
        );
      case AppRoutes.layout:
        return MaterialPageRoute(
          builder: (_) => const LayoutScreen(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
          settings: settings,
        );
    }
  }
}
