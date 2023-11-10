import 'dart:math';

import 'package:flutter/material.dart';

MaterialColor getMaterialColor({required Color color}) {
  return MaterialColor(color.value, {
    50: _lighter(color, 0.9),
    100: _lighter(color, 0.8),
    200: _lighter(color, 0.6),
    300: _lighter(color, 0.4),
    400: _lighter(color, 0.2),
    500: color,
    600: _darker(color, 0.1),
    700: _darker(color, 0.2),
    800: _darker(color, 0.3),
    900: _darker(color, 0.4),
  });
}

int _getLighterValue(int value, double lighterFactor) =>
    max(0, min((value + ((255 - value) * lighterFactor)).round(), 255));

Color _lighter(Color color, double lighterFactor) => Color.fromRGBO(
      _getLighterValue(color.red, lighterFactor),
      _getLighterValue(color.green, lighterFactor),
      _getLighterValue(color.blue, lighterFactor),
      1,
    );

int _getDarkerValue(int value, double darkerFactor) =>
    max(0, min(value - (value * darkerFactor).round(), 255));

Color _darker(Color color, double darkerFactor) => Color.fromRGBO(
      _getDarkerValue(color.red, darkerFactor),
      _getDarkerValue(color.green, darkerFactor),
      _getDarkerValue(color.blue, darkerFactor),
      1,
    );
