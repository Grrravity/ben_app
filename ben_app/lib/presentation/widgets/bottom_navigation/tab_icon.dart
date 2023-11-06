import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:ben_app/core/extension/extension_export.dart';

class TabIcon extends StatelessWidget {
  const TabIcon({
    super.key,
    required this.icon,
    required this.label,
    this.isSelected = false,
  });

  final IconData icon;

  final String label;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.colorScheme.primary;
    final secondaryColor = theme.colorScheme.secondary;
    final onSecondaryColor = theme.colorScheme.onSecondary;

    final selectedStyle = theme.textTheme.displaySmall?.copyWith(
      fontWeight: FontWeight.w700,
      color: secondaryColor,
    );

    final unselectedStyle = theme.textTheme.displaySmall?.copyWith(
      fontWeight: FontWeight.w600,
      color: onSecondaryColor,
    );

    return ColoredBox(
      color: Colors.purple.withOpacity(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Icon(
            icon,
            color: isSelected ? primaryColor : onSecondaryColor,
            size: 26,
          ),
          const SizedBox(height: 6),
          Text(
            label.capitalize(),
            style: isSelected ? selectedStyle : unselectedStyle,
          ),
          const SizedBox(height: 8),
          Icon(
            Icons.circle,
            size: 4.5,
            color: isSelected ? primaryColor : Colors.transparent,
          ),
          if (Platform.isAndroid) const SizedBox(height: 8),
        ],
      ),
    );
  }
}
