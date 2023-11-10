part of '../theme.dart';

@immutable
class Spacing extends ThemeExtension<Spacing> with EquatableMixin {
  const Spacing({
    this.tiny = 4,
    this.small = 8,
    this.medium = 12,
    this.regular = 16,
    this.large = 20,
    this.big = 24,
    this.bigger = 28,
    this.wide = 32,
    this.wider = 40,
  });

  /// Default to 4.
  final double tiny;

  /// Default to 8.
  final double small;

  /// Default to 12.
  final double medium;

  /// Default to 16.
  final double regular;

  /// Default to 20.
  final double large;

  /// Default to 24.
  final double big;

  /// Default to 28.
  final double bigger;

  /// Default to 32.
  final double wide;

  /// Default to 46.
  final double wider;

  Spacing scale(double scaleFactor) {
    return copyWith(
      tiny: tiny * scaleFactor,
      small: small * scaleFactor,
      medium: medium * scaleFactor,
      regular: regular * scaleFactor,
      large: large * scaleFactor,
      big: big * scaleFactor,
      bigger: bigger * scaleFactor,
      wide: wide * scaleFactor,
      wider: wider * scaleFactor,
    );
  }

  @override
  Spacing copyWith({
    double? tiny,
    double? small,
    double? medium,
    double? regular,
    double? large,
    double? big,
    double? bigger,
    double? wide,
    double? wider,
  }) {
    return Spacing(
      tiny: tiny ?? this.tiny,
      small: small ?? this.small,
      medium: medium ?? this.medium,
      regular: regular ?? this.regular,
      large: large ?? this.large,
      big: big ?? this.big,
      bigger: bigger ?? this.bigger,
      wide: wide ?? this.wide,
      wider: wider ?? this.wider,
    );
  }

  @override
  ThemeExtension<Spacing> lerp(ThemeExtension<Spacing>? other, double t) {
    if (other is! Spacing) {
      return this;
    }

    return Spacing(
      tiny: ui.lerpDouble(tiny, other.tiny, t) ?? tiny,
      small: ui.lerpDouble(small, other.small, t) ?? small,
      medium: ui.lerpDouble(medium, other.medium, t) ?? medium,
      regular: ui.lerpDouble(regular, other.regular, t) ?? regular,
      large: ui.lerpDouble(large, other.large, t) ?? large,
      big: ui.lerpDouble(big, other.big, t) ?? big,
      bigger: ui.lerpDouble(bigger, other.bigger, t) ?? bigger,
      wide: ui.lerpDouble(wide, other.wide, t) ?? wide,
      wider: ui.lerpDouble(wider, other.wider, t) ?? wider,
    );
  }

  @override
  List<Object?> get props => [
        tiny,
        small,
        medium,
        regular,
        large,
        big,
        bigger,
        wide,
        wider,
      ];
}
