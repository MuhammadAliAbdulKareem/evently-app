import 'package:evently_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class SelectionItem {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectionItem({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });
}

class SelectionBottomSheet extends StatelessWidget {
  const SelectionBottomSheet({super.key, required this.items});

  final List<SelectionItem> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: items
            .map(
              (item) => Column(
                children: [
                  if (items.indexOf(item) != 0) const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      item.onTap();
                      Navigator.pop(context);
                    },
                    child: _buildItem(context, item),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildItem(BuildContext context, SelectionItem item) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          item.title,
          style: AppStyles.inter24(context).copyWith(
            color: item.isSelected
                ? theme.colorScheme.primary
                : theme.colorScheme.onSurface,
            fontWeight: item.isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        if (item.isSelected)
          Icon(Icons.check, size: 32, color: theme.colorScheme.primary),
      ],
    );
  }
}
