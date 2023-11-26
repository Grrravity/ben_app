import 'dart:ui' as ui show lerpDouble;

import 'package:ben_app/core/theme/data/button.dart';
import 'package:ben_app/core/theme/data/colors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'data/material.dart';
part 'data/palette.dart';
part 'data/radius.dart';
part 'data/spacing.dart';
part 'data/typography.dart';

abstract class AppTheme {
  const AppTheme({
    required this.radius,
    required this.spacing,
    required this.colorScheme,
    required this.appBarIconColor,
    required this.tabLabelColor,
    required this.tabUnselectedLabelColor,
    required this.bottomNavigationBarUnselectedColor,
    required this.dividerColor,
    required this.checkboxSide,
    required this.checkColor,
    required this.checkboxFillColor,
  });

  /// The radius values for the application.
  final ThemeRadius radius;

  /// The spacing values for the application.
  final Spacing spacing;

  /// The color scheme for the application.
  final ColorScheme colorScheme;

  /// The color of the app bar's icon.
  final Color appBarIconColor;

  /// The color of the tab bar's selected label.
  final Color tabLabelColor;

  /// The color of the tab bar's unselected label.
  final Color tabUnselectedLabelColor;

  /// The color of the bottom navigation bar's unselected item.
  final Color bottomNavigationBarUnselectedColor;

  /// The color of the divider.
  final Color dividerColor;

  /// The color and width of the checkbox's border.
  final BorderSide checkboxSide;

  /// The color to use for the check icon when checkbox is checked.
  final Color checkColor;

  /// The color that fills the checkbox.
  final Color checkboxFillColor;

  // final CustomColors customColor;

  ThemeData get materialTheme;
}

class LightTheme extends AppTheme with MaterialThemeMixin {
  const LightTheme({
    super.radius = const ThemeRadius(),
    super.spacing = const Spacing(),
    super.colorScheme = const ColorScheme(
      brightness: Brightness.light,
      primary: CustomColors.primary,
      onPrimary: CustomColors.primaryLight,
      primaryContainer: CustomColors.primaryUltraLight,
      onPrimaryContainer: Color.fromARGB(255, 105, 6, 29),
      secondary: CustomColors.greyDark,
      onSecondary: CustomColors.accent,
      secondaryContainer: Palette.grey300,
      onSecondaryContainer: Palette.grey700,
      tertiary: Color(0xff65408F),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFC8D1DE),
      onTertiaryContainer: Color(0xFF3C3C3C),
      error: CustomColors.error,
      onError: CustomColors.primaryLight,
      background: Colors.white,
      onBackground: CustomColors.greyDark,
      surface: CustomColors.primaryUltraLight,
      onSurface: CustomColors.greyDark,
      surfaceVariant: Color(0xFFE8E0EB),
      onSurfaceVariant: Color(0xFF4A454E),
      outline: Color(0xFF7B757F),
      onInverseSurface: Color(0xFFE1F4FF),
      inverseSurface: Color(0xFF003547),
      inversePrimary: Color(0xFFD8B9FF),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xff65408F),
      outlineVariant: Color(0xFFCCC4CF),
      scrim: Color(0xFF000000),
    ),
    super.appBarIconColor = Palette.grey500,
    super.tabLabelColor = const Color(0xFF272728),
    super.tabUnselectedLabelColor = Palette.grey500,
    super.bottomNavigationBarUnselectedColor = Palette.grey500,
    super.dividerColor = Palette.grey200,
    super.checkColor = Palette.grey500,
    super.checkboxSide = const BorderSide(
      color: Color(0xFFD2D2D2),
      width: 2,
    ),
    super.checkboxFillColor = Palette.grey100,
  });
}

mixin AppThemeMixin<T extends StatefulWidget> on State<T> {
  final lightTheme = const LightTheme();
}
