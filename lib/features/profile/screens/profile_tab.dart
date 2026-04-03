import 'package:evently_app/core/providers/settings_provider.dart';
import 'package:evently_app/core/theme/app_styles.dart';
import 'package:evently_app/features/profile/widgets/language_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_assets.dart';
import '../../../l10n/app_localizations.dart';
import '../widgets/theme_bottom_sheet.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var localizations = AppLocalizations.of(context)!;
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 40,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Image.asset(AppAssets.routeLogo, fit: BoxFit.fill),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Safwat',
                        style: AppStyles.roboto22(context).copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'johnsafwat.route@gmail.com',
                        style: AppStyles.inter14(context).copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _SettingsRow(
                    label: localizations.language,
                    value: settingsProvider.locale.languageCode == 'en'
                        ? localizations.english
                        : localizations.arabic,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const LanguageBottomSheet();
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  _SettingsRow(
                    label: localizations.theme,
                    value: settingsProvider.themeMode == ThemeMode.dark
                        ? localizations.dark
                        : localizations.light,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const ThemeBottomSheet();
                        },
                      );
                    },
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Logout logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.error,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.logout, color: theme.colorScheme.onError),
                          const SizedBox(width: 10),
                          Text(
                            localizations.logout,
                            style: AppStyles.inter24(
                              context,
                            ).copyWith(color: theme.colorScheme.onError),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingsRow extends StatelessWidget {
  const _SettingsRow({
    required this.label,
    required this.value,
    required this.onTap,
  });

  final String label;
  final String value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.inter24(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: theme.colorScheme.primary),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value,
                  style: AppStyles.inter24(context).copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: theme.colorScheme.primary,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
