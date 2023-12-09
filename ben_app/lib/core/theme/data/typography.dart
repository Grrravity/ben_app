part of '../theme.dart';

class ManropeTextStyle extends TextStyle {
  const ManropeTextStyle({
    super.color = const Color(0xFF3C3C3C),
    super.backgroundColor,
    super.fontSize,
    super.fontWeight,
    super.fontStyle,
    super.letterSpacing = 0,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.leadingDistribution,
    super.locale,
    super.foreground,
    super.background,
    super.shadows,
    super.fontFeatures,
    super.decoration = TextDecoration.none,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.debugLabel = 'Manrope',
    super.overflow,
    super.inherit = true,
  }) : super(
          fontFamily: 'Manrope',
        );
}

const textTheme = TextTheme(
  displayLarge: ManropeTextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800,
  ),
  displayMedium: ManropeTextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800,
  ),
  displaySmall: ManropeTextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
  ),
  titleLarge: ManropeTextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),
  titleMedium: ManropeTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ),
  titleSmall: ManropeTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  headlineLarge: ManropeTextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
  headlineMedium: ManropeTextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
  headlineSmall: ManropeTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
  labelLarge: ManropeTextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  ),
  labelMedium: ManropeTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
  ),
  labelSmall: ManropeTextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
  bodyLarge: ManropeTextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  ),
  bodyMedium: ManropeTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  bodySmall: ManropeTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);

extension CustomTextTheme on TextTheme {
  TextStyle get text3080033 => ManropeTextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(30, 33),
      );
  TextStyle get text308004098 => ManropeTextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(30, 40.98),
      );
  TextStyle get h1 => ManropeTextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(30, 40.98),
      );
  TextStyle get h2 => ManropeTextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(24, 34),
      );
  TextStyle get text2480032 => ManropeTextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(24, 32),
      );
  TextStyle get text2470032 => ManropeTextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(24, 32),
      );
  TextStyle get text2470034 => ManropeTextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(24, 34),
      );
  TextStyle get text2280022 => ManropeTextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(22, 22),
      );
  TextStyle get text228002732 => ManropeTextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(22, 27.32),
      );
  TextStyle get text2280022letterMinus1 => ManropeTextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(22, 22),
        letterSpacing: _adaptLetterSpacing(-1),
      );
  TextStyle get h3 => ManropeTextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(21, 21),
        letterSpacing: _adaptLetterSpacing(-1),
      );
  TextStyle get text2270030 => ManropeTextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(22, 39),
      );
  TextStyle get text2270024 => ManropeTextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(22, 24.2),
      );
  TextStyle get blocTitle => ManropeTextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(20, 27.32),
      );
  TextStyle get text1880024 => ManropeTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(18, 24),
      );
  TextStyle get text188002459 => ManropeTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(18, 24.59),
      );
  TextStyle get text1870024 => ManropeTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(18, 26),
      );
  TextStyle get text1860019 => ManropeTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(18, 19),
      );
  TextStyle get text1870018 => ManropeTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(18, 18),
      );
  TextStyle get text187002186 => ManropeTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(18, 21.86),
      );
  TextStyle get text1680022 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(16, 22),
      );
  TextStyle get text1680024 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(16, 24),
      );
  TextStyle get text1670016 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(16, 16),
      );
  TextStyle get text1670016letter1 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(16, 16),
        letterSpacing: _adaptLetterSpacing(1),
      );
  TextStyle get text1670017 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(16, 17),
      );
  TextStyle get text1660028 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(16, 28),
      );
  TextStyle get text1660024 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(16, 24),
      );
  TextStyle get text1660016 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(16, 16),
      );
  TextStyle get text1660016letter1 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(16, 16),
        letterSpacing: _adaptLetterSpacing(1),
      );
  TextStyle get text1650021 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(16, 21),
      );
  TextStyle get text1650017 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(16, 17.6),
      );
  TextStyle get text165002186 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        height: _adaptHeight(16, 21.86),
      );
  TextStyle get text1650027 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(16, 27),
      );
  TextStyle get text1650026 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(16, 26),
      );
  TextStyle get text1650022 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(16, 22),
      );

  TextStyle get text1640024 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: _adaptHeight(16, 24),
      );
  TextStyle get text1440028 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: _adaptHeight(16, 28),
      );
  TextStyle get text1650024 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(16, 24),
      );
  TextStyle get text1640021 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: _adaptHeight(16, 24),
      );
  TextStyle get text1640021letter1 => ManropeTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: _adaptHeight(16, 24),
        letterSpacing: _adaptLetterSpacing(-1),
      );
  TextStyle get text1460019 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(14, 19),
      );
  TextStyle get text146001912 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(14, 19.12),
      );
  TextStyle get link => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(14, 26),
      );
  TextStyle get text14700154 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(14, 15.4),
      );
  TextStyle get text1470014 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(14, 14),
      );
  TextStyle get text1470014letter1 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(14, 14),
        letterSpacing: _adaptLetterSpacing(1),
      );
  TextStyle get text1460014 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(14, 14),
      );
  TextStyle get text1450019 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(14, 15.4),
      );
  TextStyle get text1460007 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(14, 0.07),
      );
  TextStyle get text14500154 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(14, 15.4),
      );
  TextStyle get text1450014 => ManropeTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(14, 14),
      );
  TextStyle get errorCaptation => ManropeTextStyle(
        color: const Color(0xFFF86D8F),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: _adaptHeight(14, 16),
      );
  TextStyle get text12600132 => ManropeTextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500, // ?? wrong weight ??
        height: _adaptHeight(12, 13.2),
      );
  TextStyle get text1270012 => ManropeTextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: _adaptHeight(12, 13.2), // ?? wrong height ??
      );
  TextStyle get text1260012 => ManropeTextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(12, 12),
      );
  TextStyle get text2060020 => ManropeTextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(20, 20),
      );
  TextStyle get text1260012letter1 => ManropeTextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: _adaptHeight(12, 12),
        letterSpacing: _adaptLetterSpacing(1),
      );
  TextStyle get text1250012 => ManropeTextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: _adaptHeight(12, 12),
      );
  TextStyle get text1240012 => ManropeTextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: _adaptHeight(12, 12),
      );
}

double _adaptHeight(int fontSize, double figmaLineHeight) =>
    figmaLineHeight * 0.95 / fontSize;

double _adaptLetterSpacing(double figmaLetterspacing) =>
    figmaLetterspacing * 0.9;
