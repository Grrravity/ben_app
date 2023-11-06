import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ben_app/core/theme/theme_color.dart';

final lightTheme = ThemeData.from(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  textTheme: _lightTextTheme,
).copyWith(
  textTheme: _lightTextTheme,
  primaryTextTheme: _darkTextTheme,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFF1F5F9),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    shape: CircleBorder(),
  ),
  buttonTheme: const ButtonThemeData(alignedDropdown: true),
  inputDecorationTheme: _lightTextFieldDecoration,
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    elevation: 0,
    color: _lightColorScheme.onPrimary,
  ),
  tooltipTheme: TooltipThemeData(
    padding: const EdgeInsets.all(8),
    textStyle: _darkTextTheme.labelMedium,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: primaryGrey[900]!.withOpacity(0.9),
      ),
      color: primaryGrey[900]!.withOpacity(0.9),
    ),
  ),
  iconTheme: IconThemeData(
    color: _lightColorScheme.scrim,
  ),
);

final webLightTheme = lightTheme.copyWith(
  inputDecorationTheme: lightTheme.inputDecorationTheme.copyWith(
    border: lightTheme.inputDecorationTheme.border!.copyWith(
      borderSide: BorderSide(
        color: lightTheme.scaffoldBackgroundColor,
      ),
    ),
    enabledBorder: lightTheme.inputDecorationTheme.enabledBorder!.copyWith(
      borderSide: BorderSide(
        color: lightTheme.scaffoldBackgroundColor,
      ),
    ),
    disabledBorder: lightTheme.inputDecorationTheme.disabledBorder!.copyWith(
      borderSide: BorderSide(
        color: lightTheme.scaffoldBackgroundColor,
      ),
    ),
  ),
  scrollbarTheme: ScrollbarThemeData(
    thumbVisibility: const MaterialStatePropertyAll(true),
    trackVisibility: const MaterialStatePropertyAll(true),
    thumbColor: MaterialStatePropertyAll(primaryViolet[400]),
    trackColor: MaterialStatePropertyAll(primaryViolet[50]),
    trackBorderColor: const MaterialStatePropertyAll(Colors.transparent),
  ),
);
final darkTheme = ThemeData.from(
  useMaterial3: true,
  colorScheme: _darkColorScheme,
  textTheme: _darkTextTheme,
).copyWith(
  primaryTextTheme: _lightTextTheme,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF001F2A),
  ),
  buttonTheme: const ButtonThemeData(alignedDropdown: true),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    shape: CircleBorder(),
  ),
  inputDecorationTheme: _darkTextFieldDecoration,
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    elevation: 0,
    color: _darkColorScheme.onPrimary,
  ),
  tooltipTheme: TooltipThemeData(
    padding: const EdgeInsets.all(16),
    textStyle: _lightTextTheme.titleMedium,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: primaryGrey[100]!.withOpacity(0.9),
      ),
      color: primaryGrey[100]!.withOpacity(0.9),
    ),
  ),
  iconTheme: IconThemeData(
    color: _darkColorScheme.scrim,
  ),
);

final webDarkTheme = darkTheme.copyWith(
  inputDecorationTheme: lightTheme.inputDecorationTheme.copyWith(
    border: lightTheme.inputDecorationTheme.border!.copyWith(
      borderSide: BorderSide(
        color: lightTheme.scaffoldBackgroundColor,
      ),
    ),
    enabledBorder: lightTheme.inputDecorationTheme.enabledBorder!.copyWith(
      borderSide: BorderSide(
        color: lightTheme.scaffoldBackgroundColor,
      ),
    ),
    disabledBorder: lightTheme.inputDecorationTheme.disabledBorder!.copyWith(
      borderSide: BorderSide(
        color: lightTheme.scaffoldBackgroundColor,
      ),
    ),
  ),
  scrollbarTheme: ScrollbarThemeData(
    thumbVisibility: const MaterialStatePropertyAll(true),
    trackVisibility: const MaterialStatePropertyAll(true),
    thumbColor: MaterialStatePropertyAll(primaryViolet[400]),
    trackColor: MaterialStatePropertyAll(primaryViolet[50]),
    trackBorderColor: const MaterialStatePropertyAll(Colors.transparent),
  ),
);
const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff65408F),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFEDDCFF),
  onPrimaryContainer: Color(0xFF290055),
  secondary: Color(0xFF006874),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF97F0FF),
  onSecondaryContainer: Color(0xFF001F24),
  tertiary: Color(0xff65408F),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFC8D1DE),
  onTertiaryContainer: Color(0xFF3C3C3C),
  error: Color(0xFFE96565),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFF1F5F9),
  onBackground: Color(0xFF001F2A),
  surface: Color(0xFFFAFCFF),
  onSurface: Color(0xFF001F2A),
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
);

const _darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFD8B9FF),
  onPrimary: Color(0xFF401B6E),
  primaryContainer: Color(0xFF573486),
  onPrimaryContainer: Color(0xFFEDDCFF),
  secondary: Color(0xFF4FD8EB),
  onSecondary: Color(0xFF00363D),
  secondaryContainer: Color(0xFF004F58),
  onSecondaryContainer: Color(0xFF97F0FF),
  tertiary: Color(0xFFD8B9FF),
  onTertiary: Color(0xFF401B6E),
  tertiaryContainer: Color(0xFF573486),
  onTertiaryContainer: Color(0xFFEDDCFF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F2A),
  onBackground: Color(0xFFBFE9FF),
  surface: Color(0xFF001F2A),
  onSurface: Color(0xFFBFE9FF),
  surfaceVariant: Color(0xFF4A454E),
  onSurfaceVariant: Color(0xFFCCC4CF),
  outline: Color(0xFF958E99),
  onInverseSurface: Color(0xFF001F2A),
  inverseSurface: Color(0xFFBFE9FF),
  inversePrimary: Color(0xff65408F),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFD8B9FF),
  outlineVariant: Color(0xFF4A454E),
  scrim: Color(0xFFFFFFFF),
);

final _lightTextTheme = TextTheme(
  displayLarge: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(57),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  displayMedium: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(45),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  displaySmall: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(36),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  headlineLarge: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(32),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  headlineMedium: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(28),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  headlineSmall: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(24),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  titleLarge: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(22),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  titleMedium: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(20),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  titleSmall: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  bodyLarge: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(16),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  bodyMedium: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  bodySmall: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(12),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  labelLarge: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  labelMedium: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(12),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  labelSmall: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(11),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
);

final _darkTextTheme = TextTheme(
  displayLarge: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(57),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  displayMedium: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(45),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  displaySmall: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(36),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  headlineLarge: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(32),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  headlineMedium: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(28),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  headlineSmall: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(24),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  titleLarge: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(22),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  titleMedium: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(20),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  titleSmall: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  bodyLarge: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(16),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  bodyMedium: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  bodySmall: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(12),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  labelLarge: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  labelMedium: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(12),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  labelSmall: TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: figmaToSizeConverter(11),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
);

final _lightTextFieldDecoration = InputDecorationTheme(
  contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
  filled: true,
  alignLabelWithHint: true,
  fillColor: Colors.white,
  hintStyle: TextStyle(
    color: primaryGrey[200],
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  errorStyle: TextStyle(
    color: errorColor,
    fontSize: figmaToSizeConverter(12),
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  labelStyle: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  floatingLabelStyle: TextStyle(
    color: const Color(0xFF000000),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  floatingLabelBehavior: FloatingLabelBehavior.always,
  helperStyle: TextStyle(
    color: primaryGrey[200],
    fontSize: figmaToSizeConverter(12),
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(16),
    ),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
  disabledBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
  enabledBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(16),
    ),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
  errorBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    borderSide: BorderSide(
      color: errorColor,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(16),
    ),
    borderSide: BorderSide(
      color: primaryViolet[100]!,
    ),
  ),
  focusedErrorBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    borderSide: BorderSide(
      color: errorColor,
    ),
  ),
);

final _darkTextFieldDecoration = InputDecorationTheme(
  contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
  filled: true,
  alignLabelWithHint: true,
  fillColor: Colors.black,
  hintStyle: TextStyle(
    color: primaryGrey[300],
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  errorStyle: TextStyle(
    color: errorColor,
    fontSize: figmaToSizeConverter(12),
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  labelStyle: TextStyle(
    color: const Color(0xFFBFE9FF),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  floatingLabelStyle: TextStyle(
    color: const Color(0xFFBFE9FF),
    fontSize: figmaToSizeConverter(14),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  floatingLabelBehavior: FloatingLabelBehavior.always,
  helperStyle: TextStyle(
    color: primaryGrey[300],
    fontSize: figmaToSizeConverter(12),
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
    fontFamily: 'Poppins',
    letterSpacing: -0.408,
  ),
  disabledBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
  enabledBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(16),
    ),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
  errorBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    borderSide: BorderSide(
      color: errorColor,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(16),
    ),
    borderSide: BorderSide(
      color: primaryViolet[600]!,
    ),
  ),
  focusedErrorBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    borderSide: BorderSide(
      color: errorColor,
    ),
  ),
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(16),
    ),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
);

double figmaToSizeConverter(double fontSize) {
  return kIsWeb ? fontSize : fontSize + 1.5;
}
