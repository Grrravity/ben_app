import 'package:ben_app/core/extension/extension_export.dart';
import 'package:flutter/material.dart';

class FormFieldLabel extends StatelessWidget {
  factory FormFieldLabel.required({
    required String label,
    TextStyle? textStyle,
    TextStyle? requiredTextStyle,
  }) {
    return FormFieldLabel._(
      label: label,
      isRequired: true,
      textStyle: textStyle,
      requiredTextStyle: requiredTextStyle,
    );
  }

  factory FormFieldLabel.optional({
    required String label,
    TextStyle? textStyle,
  }) {
    return FormFieldLabel._(
      label: label,
      textStyle: textStyle,
    );
  }

  const FormFieldLabel._({
    required this.label,
    this.isRequired = false,
    this.textStyle,
    this.requiredTextStyle,
  });
  final String label;
  final bool isRequired;
  final TextStyle? textStyle, requiredTextStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: label,
        style: textStyle ?? context.textTheme.bodyMedium,
        children: <TextSpan>[
          if (isRequired)
            TextSpan(
              text: ' *',
              style: requiredTextStyle ??
                  context.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
        ],
      ),
    );
  }
}
