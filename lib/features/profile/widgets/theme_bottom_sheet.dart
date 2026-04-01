import 'package:evently_app/core/providers/settings_provider.dart';
import 'package:evently_app/core/widgets/selection_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<SettingsProvider>(context);
    final localizations = AppLocalizations.of(context)!;

    return SelectionBottomSheet(
      items: [
        SelectionItem(
          title: localizations.light,
          isSelected: settingsProvider.themeMode == ThemeMode.light,
          onTap: () => settingsProvider.changeTheme(ThemeMode.light),
        ),
        SelectionItem(
          title: localizations.dark,
          isSelected: settingsProvider.themeMode == ThemeMode.dark,
          onTap: () => settingsProvider.changeTheme(ThemeMode.dark),
        ),
      ],
    );
  }
}
