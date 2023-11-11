import 'package:ben_app/core/error/input_failure.dart';

class InputValidationHelper {
  static bool isValidEmail(String email) {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(email);
  }

  static InputFailure? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return InputFailure.emailRequired;
    } else if (!isValidEmail(value)) {
      return InputFailure.emailRequired;
    }
    return null;
  }

  static InputFailure? optionalEmailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    } else if (!isValidEmail(value)) {
      return InputFailure.emailRequired;
    }
    return null;
  }

  static InputFailure? strongPasswordCheck(String? value) {
    if (value == null || value.isEmpty) {
      return InputFailure.strongPasswordLength;
    }
    if (value.length < 6) {
      return InputFailure.strongPasswordLength;
    }
    return null;
  }

  static InputFailure? requiredNameCheck(String? value) {
    if (value == null || value.isEmpty) {
      return InputFailure.fieldRequired;
    }
    if (value.length <= 1) {
      return InputFailure.fieldLength;
    }
    if (!RegExp(r'^[^0-9<>.,"?!;:#$%&\(\)\*\+\/=@\[\]\\\^_{}\|~]+$')
        .hasMatch(value)) {
      return InputFailure.fieldForbiddenCharacter;
    }
    return null;
  }

  static InputFailure? requiredIdCheck(String? value) {
    if (value == null || value.isEmpty) {
      return InputFailure.fieldRequired;
    }
    if (value.length <= 1) {
      return InputFailure.fieldLength;
    }
    if (!RegExp(r'^[^<>.,"?!;:#$%&\(\)\*\+\/=@\[\]\\\^_{}\|~]+$')
        .hasMatch(value)) {
      return InputFailure.fieldForbiddenCharacter;
    }
    return null;
  }

  static InputFailure? requiredListValidation(List<dynamic>? value) {
    if (value == null || value.isEmpty) {
      return InputFailure.fieldRequired;
    }
    return null;
  }

  static InputFailure? requiredStringValidation(String? value) {
    if (value == null || value.isEmpty) {
      return InputFailure.fieldRequired;
    }
    return null;
  }

  static InputFailure? requiredBoolValidation(bool? value) {
    if (value == null) {
      return InputFailure.fieldRequired;
    }
    return null;
  }

  static InputFailure? requiredIntValidation(int? value) {
    if (value == null) {
      return InputFailure.intValidation;
    }
    return null;
  }

  static InputFailure? requiredBeforeDateValidation(DateTime? value) {
    if (value == null) {
      return InputFailure.fieldRequired;
    }
    if (value.isAfter(DateTime.now())) {
      return InputFailure.dateInvalid;
    }
    return null;
  }

  static InputFailure? requiredDateValidation(DateTime? value) {
    if (value == null) {
      return InputFailure.fieldRequired;
    }
    return null;
  }

  static InputFailure? optionalStringValidation(String? value) {
    if (value == null) {
      return null;
    } else if (value.isEmpty) {
      return InputFailure.fieldRequired;
    }
    return null;
  }
}
