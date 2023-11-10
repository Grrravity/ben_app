import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ButtonsStyles extends ThemeExtension<ButtonsStyles> with EquatableMixin {
  ButtonsStyles({required this.filledLight});

  final ButtonStyle filledLight;

  @override
  ThemeExtension<ButtonsStyles> copyWith({
    ButtonStyle? filledLight,
  }) =>
      ButtonsStyles(
        filledLight: filledLight ?? this.filledLight,
      );

  @override
  ThemeExtension<ButtonsStyles> lerp(
    covariant ThemeExtension<ButtonsStyles>? other,
    double t,
  ) {
    if (other is! ButtonsStyles) {
      return this;
    }

    return ButtonsStyles(
      filledLight:
          ButtonStyle.lerp(filledLight, other.filledLight, t) ?? filledLight,
    );
  }

  @override
  List<Object?> get props => [filledLight];
}

class FilledButtonsStyles {
  FilledButtonsStyles({required this.light});

  final ButtonStyle light;
}
