import 'package:flutter/material.dart';

/// Dismisses keyboard when tapping outside any
/// Field.
class Unfocus extends StatelessWidget {
  const Unfocus({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: child,
      );
}
