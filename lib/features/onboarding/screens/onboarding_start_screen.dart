import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:country_flags/country_flags.dart';
import 'package:evently_app/core/constants/app_assets.dart';
import 'package:evently_app/core/routes/app_routes.dart';
import 'package:evently_app/core/theme/app_styles.dart';
import 'package:evently_app/features/onboarding/widgets/onboarding_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/settings_provider.dart';
import '../../../l10n/app_localizations.dart';

class OnboardingStartScreen extends StatefulWidget {
  const OnboardingStartScreen({super.key});

  @override
  State<OnboardingStartScreen> createState() => _OnboardingStartScreenState();
}

class _OnboardingStartScreenState extends State<OnboardingStartScreen> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var localizations = AppLocalizations.of(context)!;
    var isDark = settingsProvider.themeMode == ThemeMode.dark;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const OnboardingHeader(),
            Expanded(
              child: Image.asset(
                isDark
                    ? AppAssets.onboardingDarkLogo1
                    : AppAssets.onboardingLightLogo1,
                fit: BoxFit.contain,
              ),
            ),

            Text(
              "Personalize Your Experience",
              style: AppStyles.inter20(context).copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.",
              style: AppStyles.inter16(context),
            ),
            const SizedBox(height: 24),

            // Language Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localizations.language,
                  style: AppStyles.inter24(context).copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AnimatedToggleSwitch<bool>.dual(
                  current: settingsProvider.locale.languageCode == 'en',
                  first: true,
                  second: false,
                  borderWidth: 3,
                  spacing: 0.0,
                  style: ToggleStyle(
                    borderColor: theme.colorScheme.primary,
                    indicatorColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                  ),
                  height: 40,
                  onChanged: (v) {
                    if (v) {
                      settingsProvider.changeLanguage('en');
                    } else {
                      settingsProvider.changeLanguage('ar');
                    }
                  },

                  iconBuilder: (value) => Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 3,
                      ),
                    ),
                    child: ClipOval(
                      child: CountryFlag.fromCountryCode(value ? 'US' : 'EG'),
                    ),
                  ),
                  textBuilder: (value) => Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: ClipOval(
                      child: CountryFlag.fromCountryCode(value ? 'EG' : 'US'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Theme Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localizations.theme,
                  style: AppStyles.inter24(context).copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AnimatedToggleSwitch<bool>.dual(
                  current: settingsProvider.themeMode == ThemeMode.light,
                  first: true,
                  second: false,
                  spacing: 0.0,
                  borderWidth: 3,
                  style: ToggleStyle(
                    borderColor: theme.colorScheme.primary,
                    indicatorColor: theme.colorScheme.primary,
                    backgroundColor: Colors.transparent,
                  ),
                  height: 40,
                  onChanged: (v) {
                    if (v) {
                      settingsProvider.changeTheme(ThemeMode.light);
                    } else {
                      settingsProvider.changeTheme(ThemeMode.dark);
                    }
                  },
                  iconBuilder: (value) => Icon(
                    value ? Icons.sunny : Icons.nightlight_round,
                    color: theme.colorScheme.onPrimary,
                    size: 28,
                  ),
                  textBuilder: (value) => Icon(
                    value ? Icons.nightlight_round : Icons.sunny,
                    color: theme.colorScheme.primary,
                    size: 28,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.maxFinite, 56),
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: AppStyles.inter20(
                  context,
                ).copyWith(fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text("Let's Start"),
            ),
          ],
        ),
      ),
    );
  }
}
