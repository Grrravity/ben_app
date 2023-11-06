import 'package:json_annotation/json_annotation.dart';
import 'package:ben_app/core/error/input_failure.dart';
import 'package:ben_app/core/utils/field_helper.dart';
import 'package:ben_app/core/utils/value_object.dart';

part '../generated/utils/input_object.g.dart';

@JsonSerializable(explicitToJson: true)
class StringInput extends ValueObject<String, InputFailure> {
  factory StringInput({
    String? value,
  }) =>
      StringInput._(
        value: value,
        failure: _buildFailure(
          value: value,
        ),
        isEditable: true,
      );

  factory StringInput.fromJson(Map<String, dynamic> json) =>
      _$StringInputFromJson(json);

  const StringInput._({
    super.value,
    super.failure,
    required super.isEditable,
  });

  StringInput copyValue(String? value) =>
      StringInput(value: value ?? this.value);

  static InputFailure? _buildFailure({
    String? value,
  }) {
    if (value == null || value.isEmpty) return InputFailure.requiredField;

    return null;
  }

  Map<String, dynamic> toJson() => _$StringInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EmailInput extends ValueObject<String, InputFailure> {
  factory EmailInput({
    String? value,
  }) =>
      EmailInput._(
        value: value,
        failure: _buildFailure(
          value: value,
        ),
        isEditable: true,
      );

  factory EmailInput.fromJson(Map<String, dynamic> json) =>
      _$EmailInputFromJson(json);

  const EmailInput._({
    super.value,
    super.failure,
    required super.isEditable,
  });

  EmailInput copyValue(String? value) => EmailInput(
        value: value ?? this.value,
      );

  static InputFailure? _buildFailure({
    String? value,
  }) {
    if (value == null || value.isEmpty) {
      return InputFailure.requiredField;
    }

    if (!FieldValidationHelper.isValidEmail(value)) {
      return InputFailure.invalidEmail;
    }

    return null;
  }

  Map<String, dynamic> toJson() => _$EmailInputToJson(this);
}
