part of '../theme.dart';

@immutable
class ThemeRadius extends ThemeExtension<ThemeRadius> {
  const ThemeRadius({
    this.tiny = const Radius.circular(8),
    this.small = const Radius.circular(10),
    this.regular = const Radius.circular(12),
    this.big = const Radius.circular(16),
    this.veryBig = const Radius.circular(24),
  });

  /// Default to 8.
  final Radius tiny;

  /// Default to 10.
  final Radius small;

  /// Default to 12.
  final Radius regular;

  /// Default to 16.
  final Radius big;

  /// Default to 24.
  final Radius veryBig;

  @override
  ThemeExtension<ThemeRadius> copyWith({
    Radius? tiny,
    Radius? small,
    Radius? regular,
    Radius? big,
    Radius? veryBig,
  }) {
    return ThemeRadius(
      tiny: tiny ?? this.tiny,
      small: small ?? this.small,
      regular: regular ?? this.regular,
      big: big ?? this.big,
      veryBig: veryBig ?? this.veryBig,
    );
  }

  @override
  ThemeExtension<ThemeRadius> lerp(
    ThemeExtension<ThemeRadius>? other,
    double t,
  ) {
    if (other is! ThemeRadius) {
      return this;
    }

    return ThemeRadius(
      tiny: Radius.lerp(tiny, other.tiny, t) ?? tiny,
      small: Radius.lerp(small, other.small, t) ?? small,
      regular: Radius.lerp(regular, other.regular, t) ?? regular,
      big: Radius.lerp(big, other.big, t) ?? big,
      veryBig: Radius.lerp(veryBig, other.veryBig, t) ?? veryBig,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ThemeRadius &&
        other.tiny == tiny &&
        other.small == small &&
        other.regular == regular &&
        other.big == big &&
        other.veryBig == veryBig;
  }

  @override
  int get hashCode =>
      tiny.hashCode ^
      small.hashCode ^
      regular.hashCode ^
      big.hashCode ^
      veryBig.hashCode;
}
