part of '../theme.dart';

extension ThemeExtensionsProvider on ThemeData {
  Spacing get spacing => extension<Spacing>()!;
  ThemeRadius get radius => extension<ThemeRadius>()!;
  ButtonsStyles get buttons => extension<ButtonsStyles>()!;
}

mixin MaterialThemeMixin on AppTheme {
  @override
  ThemeData get materialTheme {
    return ThemeData(
      extensions: [
        radius,
        spacing,
        ButtonsStyles(
          filledLight: FilledButton.styleFrom(
            backgroundColor: colorScheme.onPrimary,
            foregroundColor: colorScheme.secondary,
          ),
        ),
      ],
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: ManropeTextStyle(
          color: colorScheme.primary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          systemStatusBarContrastEnforced: false,
          statusBarColor: Colors.transparent,
          statusBarBrightness: colorScheme.brightness,
          statusBarIconBrightness: colorScheme.brightness.inversed,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: colorScheme.brightness.inversed,
          systemNavigationBarContrastEnforced: false,
        ),
        color: colorScheme.background,
        surfaceTintColor: colorScheme.background,
        shadowColor: colorScheme.tertiary,
        elevation: 0,
        iconTheme: IconThemeData(color: appBarIconColor),
      ),
      badgeTheme: BadgeThemeData(
        backgroundColor: colorScheme.primary.withOpacity(0.1),
        textColor: colorScheme.primary,
        padding: const EdgeInsets.fromLTRB(4, 4, 4, 6),
        textStyle: const ManropeTextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: colorScheme.onPrimary,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onSecondary,
        selectedIconTheme: IconThemeData(color: colorScheme.primary),
        selectedLabelStyle: const TextStyle(fontSize: 0),
        unselectedLabelStyle: const TextStyle(fontSize: 0),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        clipBehavior: Clip.antiAlias,
      ),
      brightness: colorScheme.brightness,
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAlias,
        color: colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(radius.big),
        ),
        surfaceTintColor: Colors.transparent,
        margin: EdgeInsets.zero,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return checkboxFillColor.withOpacity(0.38);
            }
            if (states.contains(MaterialState.error)) {
              return colorScheme.error;
            }

            return checkboxFillColor;
          },
        ),
        checkColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              if (states.contains(MaterialState.error)) {
                return colorScheme.onError;
              }
              return checkColor;
            }

            // No icons available when the checkbox is unselected.
            return Colors.transparent;
          },
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        side: checkboxSide,
      ),
      colorScheme: colorScheme,
      dialogTheme: DialogTheme(
        backgroundColor: colorScheme.background,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(radius.big),
        ),
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: CustomColors.primaryLight,
        surfaceTintColor: Colors.transparent,
        headerHelpStyle: textTheme.text1870018,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(radius.big),
        ),
      ),
      timePickerTheme: TimePickerThemeData(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        helpTextStyle: textTheme.text1870018,
        backgroundColor: CustomColors.primaryLight,
        dialBackgroundColor: CustomColors.primaryUltraLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(radius.big),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: dividerColor,
        thickness: 1,
        space: spacing.regular,
        indent: 0,
        endIndent: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          padding: EdgeInsets.symmetric(
            horizontal: spacing.regular,
            vertical: 14,
          ),
          elevation: 0,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(radius.big),
          ),
          textStyle: textTheme.titleMedium,
        ),
      ),
      fontFamily: 'Manrope',
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          //shape: CircleBorder(),
          // iconSize: 36,
          ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        prefixIconColor: colorScheme.onSurface,
        iconColor: colorScheme.tertiary,
        hintStyle: textTheme.text1640024.copyWith(color: colorScheme.secondary),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius.small),
          borderSide: BorderSide(
            color: colorScheme.onSecondary.withOpacity(0.3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius.small),
          borderSide: BorderSide(
            color: colorScheme.onSecondary.withOpacity(0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius.small),
          borderSide: BorderSide(
            color: colorScheme.primary.withOpacity(0.2),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius.small),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius.small),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius.small),
          borderSide: const BorderSide(color: Palette.grey300),
        ),
        contentPadding: EdgeInsets.all(spacing.medium),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(colorScheme.primary),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: colorScheme.secondary,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(100, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: textTheme.text1670016,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(radius.big),
          ),
          side: BorderSide(color: colorScheme.onPrimary),
          padding: EdgeInsets.symmetric(
            horizontal: spacing.regular,
            vertical: 14,
          ),
          textStyle: textTheme.titleMedium,
        ),
      ),
      scaffoldBackgroundColor: colorScheme.background,
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return Palette.grey500;
          },
        ),
        trackColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return colorScheme.primary;
            }
            return Palette.grey100;
          },
        ),
      ),
      tabBarTheme: TabBarTheme(
        splashFactory: NoSplash.splashFactory,
        labelColor: tabLabelColor,
        unselectedLabelColor: tabUnselectedLabelColor,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 4, color: colorScheme.primary),
        ),
        labelStyle: const ManropeTextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.4,
        ),
        unselectedLabelStyle: const ManropeTextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.4,
        ),
      ),
      textTheme: textTheme,
      primaryTextTheme:
          textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}

extension on Brightness {
  Brightness get inversed {
    return this == Brightness.light ? Brightness.dark : Brightness.light;
  }
}
