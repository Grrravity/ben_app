import 'dart:developer';

import 'package:flutter/foundation.dart';

const _red = '\x1B[31m';
const _green = '\x1B[32m';
const _yellow = '\x1B[33m';
const _bleu = '\x1B[34m';
const _purple = '\x1B[35m';
const _cyan = '\x1B[36m';
const _reset = '\x1B[0m';

class Logger {
  Logger([this.name]);

  final String? name;

  static final Logger _defaultInstance = Logger();

  static void e(Object message, {Object? error, StackTrace? stackTrace}) =>
      _defaultInstance.error(message, error: error, stackTrace: stackTrace);
  void error(Object message, {Object? error, StackTrace? stackTrace}) {
    _print(message, _red, error: error, stackTrace: stackTrace);
  }

  static void s(Object message) => _defaultInstance.success(message);
  void success(Object message) {
    _print(message, _green);
  }

  static void i(Object message) => _defaultInstance.info(message);
  void info(Object message) {
    _print(message, _yellow);
  }

  static void p(Object message) => _defaultInstance.process(message);
  void process(Object message) {
    _print(message, _purple);
  }

  static void r(Object message) => _defaultInstance.request(message);
  void request(Object message) {
    _print(message, _cyan);
  }

  static void o(Object message) => _defaultInstance.other(message);
  void other(Object message) {
    _print(message, _bleu);
  }

  void _print(
    Object message,
    String color, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      log(
        color + message.toString() + _reset,
        name: name ?? '',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
