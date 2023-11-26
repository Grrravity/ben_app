enum FieldErrorKey {
  emailRequiredValidation,
  invalidEmailValidation,
  strongPasswordRequiredValidation,
  strongPasswordLengthValidation,
  strongPasswordDigitValidation,
  strongPasswordUpperCaseValidation,
  strongPasswordLowerCaseValidation,
  strongPasswordSymbolValidation,
  fieldRequiredValidation,
  fieldLengthValidation,
  fieldForbiddenCharacterValidation,
  phoneNumberRequiredValidation,
  phoneNumberStartValidation,
  phoneNumberLengthValidation,
  phoneNumberInvalid,
  strongPasswordInvalid,
  invalidSiretFied,
  siretFieldRequired,
  invalidSirenFied,
  sirenFieldRequired,
}

class FieldValidationHelper {
  static bool isValidEmail(String email) {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(email);
  }

  static FieldErrorKey? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return FieldErrorKey.emailRequiredValidation;
    } else if (!isValidEmail(value)) {
      return FieldErrorKey.invalidEmailValidation;
    }
    return null;
  }

  static FieldErrorKey? optionalEmailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    } else if (!isValidEmail(value)) {
      return FieldErrorKey.invalidEmailValidation;
    }
    return null;
  }

  static FieldErrorKey? strongPasswordCheck(String? value) {
    if (value == null || value.isEmpty) {
      return FieldErrorKey.strongPasswordRequiredValidation;
    }
    if (!RegExp('(?=.*[a-z]){1}').hasMatch(value)) {
      return FieldErrorKey.strongPasswordLowerCaseValidation;
    }
    if (!RegExp('(?=.*[A-Z]){1}').hasMatch(value)) {
      return FieldErrorKey.strongPasswordUpperCaseValidation;
    }
    if (!RegExp(r'[\d]{1}').hasMatch(value)) {
      return FieldErrorKey.strongPasswordDigitValidation;
    }
    if (!RegExp(r'[@$!%*#?&]{1}').hasMatch(value)) {
      return FieldErrorKey.strongPasswordSymbolValidation;
    }
    if (value.length < 8) {
      return FieldErrorKey.strongPasswordLengthValidation;
    }
    if (RegExp(
      '[ "\'()+,-./:;<=>[\\]^_`{|}~]',
    ).hasMatch(value)) {
      return FieldErrorKey.strongPasswordInvalid;
    }
    return null;
  }

  static FieldErrorKey? requiredNameCheck(String? value) {
    if (value == null || value.isEmpty) {
      return FieldErrorKey.fieldRequiredValidation;
    }
    if (value.length <= 1) {
      return FieldErrorKey.fieldLengthValidation;
    }
    if (!RegExp(r'^[^0-9<>.,"?!;:#$%&\(\)\*\+\/=@\[\]\\\^_{}\|~]+$')
        .hasMatch(value)) {
      return FieldErrorKey.fieldForbiddenCharacterValidation;
    }
    return null;
  }

  static FieldErrorKey? requiredIdCheck(String? value) {
    if (value == null || value.isEmpty) {
      return FieldErrorKey.fieldRequiredValidation;
    }
    if (value.length <= 1) {
      return FieldErrorKey.fieldLengthValidation;
    }
    if (!RegExp(r'^[^<>.,"?!;:#$%&\(\)\*\+\/=@\[\]\\\^_{}\|~]+$')
        .hasMatch(value)) {
      return FieldErrorKey.fieldForbiddenCharacterValidation;
    }
    return null;
  }

  static FieldErrorKey? requiredSiretCheck(String? value) {
    if (value == null || value.isEmpty) {
      return FieldErrorKey.siretFieldRequired;
    }
    if (!RegExp(r'^[\d]{14}$').hasMatch(value)) {
      return FieldErrorKey.invalidSiretFied;
    }
    return null;
  }

  static FieldErrorKey? requiredSirenCheck(String? value) {
    if (value == null || value.isEmpty) {
      return FieldErrorKey.sirenFieldRequired;
    }
    if (!RegExp(r'^[\d]{9}$').hasMatch(value)) {
      return FieldErrorKey.invalidSirenFied;
    }
    return null;
  }

  static FieldErrorKey? requiredStringValidation(String? value) {
    if (value == null || value.isEmpty) {
      return FieldErrorKey.fieldRequiredValidation;
    }
    return null;
  }

  static FieldErrorKey? optionalStringValidation(String? value) {
    if (value == null) {
      return null;
    } else if (value.isEmpty) {
      return FieldErrorKey.fieldRequiredValidation;
    }
    return null;
  }

  static FieldErrorKey? phoneNumberValidation(String? value) {
    if (value == null || value.isEmpty) {
      return FieldErrorKey.phoneNumberRequiredValidation;
    }
    if (!value.startsWith('+') && !value.startsWith('0')) {
      return FieldErrorKey.phoneNumberStartValidation;
    }
    if (!RegExp(
      r'^(([+]([1-9]?){1,2}){1}(?:\d\s?-?){8,14}|[0]{1}(?:\d\s?-?){7,12})',
    ).hasMatch(value)) {
      return FieldErrorKey.phoneNumberInvalid;
    }
    return null;
  }
}
