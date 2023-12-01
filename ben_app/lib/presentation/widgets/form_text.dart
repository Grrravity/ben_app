import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends FormField<String> {
  CustomTextField({
    super.autovalidateMode,
    super.validator,
    super.onSaved,
    super.enabled,
    this.label,
    this.hintText,
    this.controller,
    String? initialValue,
    this.focusNode,
    this.isObscureText,
    this.isAutocorrect,
    this.isEnableSuggestion,
    this.labelTextStyle,
    this.labelRequiredTextStyle,
    this.prefixIcon,
    this.sufixIcon,
    this.inputFormatters,
    this.textInputAction,
    this.keyboardType,
    this.isReadOnly,
    this.onInputActionPressed,
    required this.onChanged,
    this.maxLines,
    this.minLines,
    this.decoration,
    this.style,
    this.textAlignVertical,
    this.autofocus,
    super.key,
  })  : assert(
          initialValue == null || controller == null,
          'You should not specify both textEditingController and initialValue',
        ),
        super(
          initialValue:
              controller != null ? controller.text : (initialValue ?? ''),
          builder: (FormFieldState<String> field) {
            final state = field as _CustomTextFieldState;
            void onChangedHandler(String value) {
              field.didChange(value);
              onChanged(value);
            }

            return TextField(
              controller: state._effectiveController,
              focusNode: focusNode,
              inputFormatters: inputFormatters,
              textInputAction: textInputAction,
              keyboardType: keyboardType ?? TextInputType.text,
              readOnly: isReadOnly ?? false,
              obscureText: isObscureText ?? false,
              autocorrect: isAutocorrect ?? true,
              enableSuggestions: isEnableSuggestion ?? true,
              style: style,
              textAlignVertical: textAlignVertical,
              autofocus: autofocus ?? false,
              obscuringCharacter: '*',
              decoration: decoration ??
                  InputDecoration(
                    enabled: enabled,
                    errorText: state.errorText,
                    hintText: hintText,
                    prefixIcon: prefixIcon,
                    suffixIcon: sufixIcon,
                  ),
              onEditingComplete: () {
                if (onInputActionPressed != null) {
                  onInputActionPressed();
                }
              },
              onChanged: onChangedHandler,
              maxLines: maxLines,
              minLines: minLines,
            );
          },
        );
  final String? label;
  final String? hintText;

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController] and
  /// initialize its [TextEditingController.text] with [initialValue].
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? isObscureText, isAutocorrect, isEnableSuggestion;
  final TextStyle? labelTextStyle, labelRequiredTextStyle, style;
  final TextAlignVertical? textAlignVertical;
  final Widget? prefixIcon, sufixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool? isReadOnly;
  final bool? autofocus;
  final void Function()? onInputActionPressed;
  final void Function(String value) onChanged;
  final int? maxLines;
  final int? minLines;
  final InputDecoration? decoration;

  @override
  FormFieldState<String> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends FormFieldState<String> {
  RestorableTextEditingController? _controller;

  TextEditingController get _effectiveController =>
      _textFormField.controller ?? _controller!.value;

  CustomTextField get _textFormField => super.widget as CustomTextField;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    super.restoreState(oldBucket, initialRestore);
    if (_controller != null) {
      _registerController();
    }
    // Make sure to update the internal [FormFieldState] value to sync up with
    // text editing controller value.
    setValue(_effectiveController.text);
  }

  void _registerController() {
    assert(
      _controller != null,
      'TextController should not be null',
    );
    registerForRestoration(_controller!, 'controller');
  }

  void _createLocalController([TextEditingValue? value]) {
    assert(
      _controller == null,
      'TextController should not be null',
    );
    _controller = value == null
        ? RestorableTextEditingController()
        : RestorableTextEditingController.fromValue(value);
    if (!restorePending) {
      _registerController();
    }
  }

  @override
  void initState() {
    super.initState();
    if (_textFormField.controller == null) {
      _createLocalController(
        widget.initialValue != null
            ? TextEditingValue(text: widget.initialValue!)
            : null,
      );
    } else {
      _textFormField.controller!.addListener(_handleControllerChanged);
    }
  }

  @override
  void didUpdateWidget(CustomTextField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (_textFormField.controller != oldWidget.controller) {
      oldWidget.controller?.removeListener(_handleControllerChanged);
      _textFormField.controller?.addListener(_handleControllerChanged);

      if (oldWidget.controller != null && _textFormField.controller == null) {
        _createLocalController(oldWidget.controller!.value);
      }

      if (_textFormField.controller != null) {
        setValue(_textFormField.controller!.text);
        if (oldWidget.controller == null) {
          unregisterFromRestoration(_controller!);
          _controller!.dispose();
          _controller = null;
        }
      }
    }

    if (_textFormField.initialValue != value) {
      final newText = _textFormField.initialValue ?? '';
      _effectiveController.value = TextEditingValue(
        text: newText,
        selection: TextSelection(
          baseOffset: newText.length,
          extentOffset: newText.length,
        ),
      );
    }
  }

  @override
  void dispose() {
    _textFormField.controller?.removeListener(_handleControllerChanged);
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didChange(String? value) {
    super.didChange(value);

    if (_effectiveController.text != value) {
      _effectiveController.text = value ?? '';
    }
  }

  @override
  void reset() {
    // setState will be called in the superclass, so even though state is being
    // manipulated, no setState call is needed here.
    _effectiveController.text = widget.initialValue ?? '';
    super.reset();
  }

  void _handleControllerChanged() {
    // Suppress changes that originated from within this class.
    //
    // In the case where a controller has been passed in to this widget, we
    // register this change listener. In these cases, we'll also receive change
    // notifications for changes originating from within this class -- for
    // example, the reset() method. In such cases, the FormField value will
    // already have been set.
    if (_effectiveController.text != value) {
      didChange(_effectiveController.text);
    }
  }
}
