import 'package:ben_app/core/error/input_failure.dart';
import 'package:ben_app/core/helpers/field_helper.dart';
import 'package:ben_app/core/utils/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/utils/input_object.g.dart';

@JsonSerializable(explicitToJson: true)
class PasswordInput extends ValueObject<String, InputFailure> {
  factory PasswordInput({
    String? value,
  }) =>
      PasswordInput._(
        value: value,
        validator: InputValidationHelper.strongPasswordCheck,
        isEditable: true,
      );

  factory PasswordInput.fromJson(Map<String, dynamic> json) =>
      _$PasswordInputFromJson(json);

  PasswordInput._({
    super.value,
    super.validator,
    required super.isEditable,
  });

  PasswordInput copyValue(String? value) =>
      PasswordInput(value: value ?? this.value);

  Map<String, dynamic> toJson() => _$PasswordInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StringInput extends ValueObject<String, InputFailure> {
  factory StringInput({
    String? value,
  }) =>
      StringInput._(
        value: value,
        validator: InputValidationHelper.requiredStringValidation,
        isEditable: true,
      );

  factory StringInput.fromJson(Map<String, dynamic> json) =>
      _$StringInputFromJson(json);

  StringInput._({
    super.value,
    super.validator,
    required super.isEditable,
  });

  StringInput copyValue(String? value) =>
      StringInput(value: value ?? this.value);

  Map<String, dynamic> toJson() => _$StringInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoolInput extends ValueObject<bool, InputFailure> {
  factory BoolInput({
    bool? value,
  }) =>
      BoolInput._(
        value: value,
        validator: InputValidationHelper.requiredBoolValidation,
        isEditable: true,
      );

  factory BoolInput.fromJson(Map<String, dynamic> json) =>
      _$BoolInputFromJson(json);

  BoolInput._({
    super.value,
    super.validator,
    required super.isEditable,
  });

  BoolInput copyValue(bool? value) => BoolInput(value: value ?? this.value);

  Map<String, dynamic> toJson() => _$BoolInputToJson(this);
}

class IntInput extends ValueObject<int, InputFailure> {
  factory IntInput({
    int? value,
  }) {
    return IntInput._(
      value: value,
      validator: InputValidationHelper.requiredIntValidation,
      isEditable: true,
    );
  }

  IntInput._({
    super.value,
    super.validator,
    required super.isEditable,
  });

  IntInput copyValue(int? value) => IntInput(value: value ?? this.value);
}

@JsonSerializable(explicitToJson: true)
class EmailInput extends ValueObject<String, InputFailure> {
  factory EmailInput({
    String? value,
  }) =>
      EmailInput._(
        value: value,
        validator: InputValidationHelper.emailValidation,
        isEditable: true,
      );

  factory EmailInput.fromJson(Map<String, dynamic> json) =>
      _$EmailInputFromJson(json);

  EmailInput._({
    super.value,
    super.validator,
    required super.isEditable,
  });

  EmailInput copyValue(String? value) => EmailInput(
        value: value ?? this.value,
      );

  Map<String, dynamic> toJson() => _$EmailInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DateInput extends ValueObject<DateTime, InputFailure> {
  factory DateInput({
    DateTime? value,
  }) =>
      DateInput._(
        value: value,
        validator: InputValidationHelper.requiredDateValidation,
        isEditable: true,
      );

  factory DateInput.fromJson(Map<String, dynamic> json) =>
      _$DateInputFromJson(json);

  DateInput._({
    super.value,
    super.validator,
    required super.isEditable,
  });

  DateInput copyValue(DateTime? value) => DateInput(value: value ?? this.value);

  Map<String, dynamic> toJson() => _$DateInputToJson(this);
}

@JsonSerializable()
class MapIntInput extends ValueObject<Map<String, int>, InputFailure> {
  factory MapIntInput({
    Map<String, int>? value,
  }) =>
      MapIntInput._(
        value: value,
        validator: (value) {
          if (value == null) {
            return InputFailure.fieldRequired;
          }
          if (value.keys.any((element) => element == '')) {
            return InputFailure.fieldRequired;
          }
          if (value.values.any((element) => element == 0)) {
            return InputFailure.fieldRequired;
          }
          if (value.keys.toList().length != value.keys.toSet().length) {
            return InputFailure.other;
          }
          return null;
        },
        isEditable: true,
      );

  factory MapIntInput.fromJson(Map<String, dynamic> json) =>
      _$MapIntInputFromJson(json);

  MapIntInput._({
    super.value,
    super.validator,
    required super.isEditable,
  });

  MapIntInput copyValue(Map<String, int>? value) => MapIntInput(
        value: value ?? this.value,
      );

  Map<String, dynamic> toJson() => _$MapIntInputToJson(this);
}
