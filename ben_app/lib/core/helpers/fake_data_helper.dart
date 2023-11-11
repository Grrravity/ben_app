import 'dart:math';

final _random = Random();

int next(int min, int max) => min + _random.nextInt(max - min);
