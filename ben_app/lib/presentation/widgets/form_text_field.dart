// ignore_for_file: prefer_null_aware_method_calls

import 'package:ben_app/presentation/widgets/form_label.dart';
import 'package:ben_app/presentation/widgets/form_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  factory CustomTextFormField.required({
    TextEditingController? textEditingController,
    required void Function(String value) onChanged,
    required void Function(String? value) onSaved,
    required String? Function(String? value) validator,
    Key? key,
    String? initialValue,
    Widget? sufixIcon,
    Widget? prefixIcon,
    String? label,
    TextStyle? labelTextStyle,
    TextStyle? labelRequiredTextStyle,
    TextStyle? contentStyle,
    String? hintText,
    bool? isReadOnly,
    bool? enabled,
    bool? autocorrect,
    bool? enableSuggestion,
    AutovalidateMode? autovalidateMode,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    int? maxLines,
    int? minLines,
    TextInputType? keyboardType,
    void Function()? onInputActionPressed,
    FocusNode? focusNode,
    InputDecoration? decoration,
    bool? autofocus,
    EdgeInsets? padding,
  }) {
    return CustomTextFormField._(
      key: key,
      label: label,
      initialValue: initialValue,
      textEditingController: textEditingController,
      hintText: hintText,
      isRequired: true,
      labelTextStyle: labelTextStyle,
      labelRequiredTextStyle: labelRequiredTextStyle,
      contentStyle: contentStyle,
      isEnabled: enabled,
      isObscureText: false,
      isAutocorrect: autocorrect,
      isEnableSuggestion: enableSuggestion,
      sufixIcon: sufixIcon,
      prefixIcon: prefixIcon,
      autovalidateMode: autovalidateMode,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      validator: validator,
      isReadOnly: isReadOnly,
      keyboardType: keyboardType,
      maxLines: maxLines ?? 1,
      minLines: minLines,
      onChanged: onChanged,
      onInputActionPressed: onInputActionPressed,
      onSaved: onSaved,
      focusNode: focusNode,
      decoration: decoration,
      autofocus: autofocus,
      padding: padding,
    );
  }

  factory CustomTextFormField.optional({
    String? initialValue,
    TextEditingController? textEditingController,
    required void Function(String value) onChanged,
    required void Function(String? value) onSaved,
    Key? key,
    Widget? sufixIcon,
    Widget? prefixIcon,
    String? label,
    TextStyle? labelTextStyle,
    TextStyle? labelRequiredTextStyle,
    TextStyle? contentStyle,
    String? hintText,
    bool? isReadOnly,
    bool? enabled,
    bool? autocorrect,
    bool? enableSuggestion,
    AutovalidateMode? autovalidateMode,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    String? Function(String? value)? validator,
    int? maxLines,
    int? minLines,
    TextInputType? keyboardType,
    void Function()? onInputActionPressed,
    FocusNode? focusNode,
    InputDecoration? decoration,
    bool? autofocus,
    EdgeInsets? padding,
  }) {
    return CustomTextFormField._(
      key: key,
      label: label,
      initialValue: initialValue,
      textEditingController: textEditingController,
      hintText: hintText,
      isRequired: false,
      labelTextStyle: labelTextStyle,
      labelRequiredTextStyle: labelRequiredTextStyle,
      contentStyle: contentStyle,
      isEnabled: enabled,
      isObscureText: false,
      isAutocorrect: autocorrect,
      isEnableSuggestion: enableSuggestion,
      sufixIcon: sufixIcon,
      prefixIcon: prefixIcon,
      autovalidateMode: autovalidateMode,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      validator: validator,
      isReadOnly: isReadOnly,
      keyboardType: keyboardType,
      maxLines: maxLines ?? 1,
      minLines: minLines,
      onChanged: onChanged,
      onInputActionPressed: onInputActionPressed,
      onSaved: onSaved,
      focusNode: focusNode,
      decoration: decoration,
      autofocus: autofocus,
      padding: padding,
    );
  }

  factory CustomTextFormField.hiddenRequired({
    String? initialValue,
    TextEditingController? textEditingController,
    required void Function(String value) onChanged,
    required void Function(String? value) onSaved,
    required Widget sufixIcon,
    required bool obscureText,
    required String? Function(String? value) validator,
    Key? key,
    Widget? prefixIcon,
    String? label,
    TextStyle? labelTextStyle,
    TextStyle? labelRequiredTextStyle,
    TextStyle? contentStyle,
    String? hintText,
    bool? isReadOnly,
    bool? enabled,
    AutovalidateMode? autovalidateMode,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    void Function()? onInputActionPressed,
    FocusNode? focusNode,
    InputDecoration? decoration,
    bool? autofocus,
    EdgeInsets? padding,
  }) {
    return CustomTextFormField._(
      key: key,
      label: label,
      initialValue: initialValue,
      textEditingController: textEditingController,
      hintText: hintText,
      isRequired: true,
      labelTextStyle: labelTextStyle,
      labelRequiredTextStyle: labelRequiredTextStyle,
      contentStyle: contentStyle,
      isEnabled: enabled,
      isObscureText: obscureText,
      isAutocorrect: false,
      isEnableSuggestion: false,
      sufixIcon: sufixIcon,
      prefixIcon: prefixIcon,
      autovalidateMode: autovalidateMode,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      validator: validator,
      isReadOnly: isReadOnly,
      keyboardType: keyboardType,
      maxLines: 1,
      minLines: 1,
      onChanged: onChanged,
      onInputActionPressed: onInputActionPressed,
      onSaved: onSaved,
      focusNode: focusNode,
      decoration: decoration,
      autofocus: autofocus,
      padding: padding,
    );
  }
  factory CustomTextFormField.hiddenOptional({
    String? initialValue,
    TextEditingController? textEditingController,
    required void Function(String value) onChanged,
    required void Function(String? value) onSaved,
    required Widget sufixIcon,
    required bool obscureText,
    Key? key,
    Widget? prefixIcon,
    String? label,
    TextStyle? labelTextStyle,
    TextStyle? labelRequiredTextStyle,
    TextStyle? contentStyle,
    String? hintText,
    bool? isReadOnly,
    bool? enabled,
    bool? autofocus,
    AutovalidateMode? autovalidateMode,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    String? Function(String? value)? validator,
    TextInputType? keyboardType,
    void Function()? onInputActionPressed,
    FocusNode? focusNode,
    InputDecoration? decoration,
    EdgeInsets? padding,
  }) {
    return CustomTextFormField._(
      key: key,
      label: label,
      initialValue: initialValue,
      textEditingController: textEditingController,
      hintText: hintText,
      isRequired: false,
      labelTextStyle: labelTextStyle,
      labelRequiredTextStyle: labelRequiredTextStyle,
      isEnabled: enabled,
      isObscureText: obscureText,
      isAutocorrect: false,
      isEnableSuggestion: false,
      sufixIcon: sufixIcon,
      prefixIcon: prefixIcon,
      autovalidateMode: autovalidateMode,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      validator: validator,
      isReadOnly: isReadOnly,
      keyboardType: keyboardType,
      maxLines: 1,
      minLines: 1,
      onChanged: onChanged,
      onInputActionPressed: onInputActionPressed,
      onSaved: onSaved,
      focusNode: focusNode,
      decoration: decoration,
      autofocus: autofocus,
      contentStyle: contentStyle,
      padding: padding,
    );
  }

  const CustomTextFormField._({
    super.key,
    this.initialValue,
    this.textEditingController,
    required this.onSaved,
    required this.onChanged,
    required this.isRequired,
    this.prefixIcon,
    this.sufixIcon,
    this.label,
    this.labelTextStyle,
    this.labelRequiredTextStyle,
    this.contentStyle,
    this.hintText,
    this.isReadOnly,
    this.isEnabled,
    this.isObscureText,
    this.isAutocorrect,
    this.isEnableSuggestion,
    this.autovalidateMode,
    this.inputFormatters,
    this.textInputAction,
    this.validator,
    this.keyboardType,
    this.onInputActionPressed,
    this.focusNode,
    this.minLines,
    this.maxLines,
    this.decoration,
    this.autofocus,
    this.padding,
  });

  final String? initialValue;
  final String? label;
  final String? hintText;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final bool isRequired;
  final bool? isEnabled, isObscureText, isAutocorrect, isEnableSuggestion;
  final TextStyle? labelTextStyle, labelRequiredTextStyle, contentStyle;
  final Widget? prefixIcon, sufixIcon;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String? value)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool? isReadOnly;
  final bool? autofocus;
  final void Function()? onInputActionPressed;
  final void Function(String value) onChanged;
  final void Function(String? value) onSaved;
  final int? maxLines;
  final int? minLines;
  final InputDecoration? decoration;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          isRequired
              ? FormFieldLabel.required(
                  label: label!,
                  textStyle: labelTextStyle,
                  requiredTextStyle: labelRequiredTextStyle,
                )
              : FormFieldLabel.optional(
                  label: label!,
                  textStyle: labelTextStyle,
                ),
        Padding(
          padding: const EdgeInsets.only(
            top: 4,
            bottom: 16,
          ),
          child: CustomTextField(
            controller: textEditingController,
            initialValue: initialValue,
            focusNode: focusNode,
            autovalidateMode:
                autovalidateMode ?? AutovalidateMode.onUserInteraction,
            validator: validator,
            inputFormatters: inputFormatters,
            textInputAction: textInputAction,
            keyboardType: keyboardType ?? TextInputType.text,
            enabled: isEnabled ?? true,
            isReadOnly: isReadOnly ?? false,
            isObscureText: isObscureText ?? false,
            isAutocorrect: isAutocorrect ?? true,
            isEnableSuggestion: isEnableSuggestion ?? true,
            decoration: decoration,
            onInputActionPressed: () {
              if (onInputActionPressed != null) {
                onInputActionPressed!();
              }
            },
            style: contentStyle,
            onChanged: onChanged,
            onSaved: onSaved,
            maxLines: maxLines,
            minLines: minLines,
            prefixIcon: prefixIcon,
            sufixIcon: sufixIcon,
            hintText: hintText,
            autofocus: autofocus,
          ),
        ),
      ],
    );
  }
}
