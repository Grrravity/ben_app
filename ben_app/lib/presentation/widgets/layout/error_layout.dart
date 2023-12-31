import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/localization/string_to_arb.dart';
import 'package:flutter/material.dart';

class ErrorLayout extends StatelessWidget {
  const ErrorLayout(
    this.failure, {
    super.key,
    this.stackTrace,
  });

  final Failure failure;

  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(failure.localized(context)),
    );
  }
}
