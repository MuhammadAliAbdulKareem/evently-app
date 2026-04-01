import 'package:evently_app/core/constants/app_assets.dart';
import 'package:evently_app/core/providers/settings_provider.dart';
import 'package:evently_app/core/routes/app_routes.dart';
import 'package:evently_app/features/onboarding/widgets/onboarding_header.dart';
import 'package:evently_app/features/onboarding/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = "onboarding";
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var isDark = settingsProvider.themeMode == ThemeMode.dark;

    final List<OnboardingItem> pages = [
      OnboardingItem(
        image: isDark
            ? AppAssets.onboardingDarkLogo2
            : AppAssets.onboardingLightLogo2,
        title: "Find Events That Inspire You",
        description:
            "Dive into a world of events crafted to fit your unique interests. Whether you're into live music, art workshops, professional networking, or simply discovering new experiences, we have something for everyone. Our curated recommendations will help you explore, connect, and make the most of every opportunity around you.",
      ),
      OnboardingItem(
        image: isDark
            ? AppAssets.onboardingDarkLogo3
            : AppAssets.onboardingLightLogo3,
        title: "Effortless Event Planning",
        description:
            "Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we've got you covered. Plan with ease and focus on what matters – creating an unforgettable experience for you and your guests.",
      ),
      OnboardingItem(
        image: isDark
            ? AppAssets.onboardingDarkLogo4
            : AppAssets.onboardingLightLogo4,
        title: "Connect with Friends & Share Moments",
        description:
            "Make every event memorable by sharing the experience with others. Our platform lets you invite friends, keep everyone in the loop, and celebrate moments together. Capture and share the excitement with your network, so you can relive the highlights and cherish the memories.",
      ),
    ];

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const OnboardingHeader(),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                children: pages,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back Button
                  IconButton(
                    onPressed: _currentIndex > 0
                        ? () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        : null,
                    icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: _currentIndex > 0
                              ? theme.colorScheme.primary
                              : theme.colorScheme.primary.withOpacity(0.3),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: _currentIndex > 0
                            ? theme.colorScheme.primary
                            : theme.colorScheme.primary.withAlpha(76),
                      ),
                    ),
                  ),

                  // Indicator
                  Row(
                    children: List.generate(pages.length, (index) {
                      bool isActive = index == _currentIndex;

                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 8,
                        width: isActive ? 24 : 8,
                        decoration: BoxDecoration(
                          color: isActive
                              ? theme.colorScheme.primary
                              : isDark
                              ? DarkColors.cream
                              : LightColors.darkGreyOpacity50,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    }),
                  ),

                  // Next Button
                  IconButton(
                    onPressed: () {
                      if (_currentIndex == pages.length - 1) {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.layout,
                        );
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: theme.colorScheme.primary),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
