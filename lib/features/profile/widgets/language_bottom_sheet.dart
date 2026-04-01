import 'package:evently_app/core/providers/settings_provider.dart';
import 'package:evently_app/core/widgets/selection_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<SettingsProvider>(context);
    final localizations = AppLocalizations.of(context)!;

    return SelectionBottomSheet(
      items: [
        SelectionItem(
          title: localizations.english,
          isSelected: settingsProvider.locale.languageCode == 'en',
          onTap: () => settingsProvider.changeLanguage('en'),
        ),
        SelectionItem(
          title: localizations.arabic,
          isSelected: settingsProvider.locale.languageCode == 'ar',
          onTap: () => settingsProvider.changeLanguage('ar'),
        ),
      ],
    );
  }
}
