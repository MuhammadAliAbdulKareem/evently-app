import 'package:evently_app/core/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var localizations = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              settingsProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: _buildThemeItem(
              context,
              localizations.light,
              settingsProvider.themeMode == ThemeMode.light,
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              settingsProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: _buildThemeItem(
              context,
              localizations.dark,
              settingsProvider.themeMode == ThemeMode.dark,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThemeItem(BuildContext context, String text, bool isSelected) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: theme.textTheme.titleMedium?.copyWith(
            color: isSelected
                ? theme.colorScheme.primary
                : theme.colorScheme.onSurface,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        if (isSelected) Icon(Icons.check, color: theme.colorScheme.primary),
      ],
    );
  }
}
