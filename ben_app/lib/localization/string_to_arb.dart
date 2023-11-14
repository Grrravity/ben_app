import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/error/input_failure.dart';
import 'package:ben_app/localization/l10n.dart';
import 'package:flutter/material.dart';

extension ArbKey on InputFailure? {
  String? localized(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case null:
        return null;
      case InputFailure.other:
        return l10n.inputFailureOther;
      case InputFailure.emailRequired:
        return l10n.inputFailureEmailRequired;
      case InputFailure.fieldRequired:
        return l10n.inputFailureFieldRequired;
      case InputFailure.strongPasswordRequired:
        return l10n.inputFailureStrongPasswordRequired;
      case InputFailure.strongPasswordLength:
        return l10n.inputFailureStrongPasswordLength;
      case InputFailure.fieldLength:
        return l10n.inputFailureFieldLength;
      case InputFailure.fieldForbiddenCharacter:
        return l10n.inputFailureFieldForbiddenCharacter;
      case InputFailure.dateInvalid:
        return l10n.inputFailureDateInvalid;
      case InputFailure.listNotFound:
        return l10n.inputFailureListNotFound;
      case InputFailure.passwordDontMatch:
        return l10n.inputFailurePasswordDontMatch;
      case InputFailure.intValidation:
        return l10n.inputFailureIntValidation;
    }
  }
}

extension ArbFailureX on Failure {
  String localized(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case Failure.connectivity:
        return l10n.failureConnectivity;
      case Failure.other:
        return l10n.failureOther;
      case Failure.authentication:
        return l10n.failureAuthentication;
      case Failure.passwordsNotIdenticals:
        return l10n.failurePasswordNotIdenticals;
      case Failure.passwordInvalid:
        return l10n.failurePasswordInvalid;
      case Failure.unauthorized:
        return l10n.failureUnauthorized;
      case Failure.invalidCommand:
        return l10n.failureInvalidCommand;
      case Failure.elementNotFound:
        return l10n.failureElementNotFound;
      case Failure.emailNotValid:
        return l10n.failureEmailNotValid;
      case Failure.textIsEmpty:
        return l10n.failureTextIsEmpty;
      case Failure.formIsInvalid:
        return l10n.failureFormIsInvalid;
      case Failure.notVerified:
        return l10n.failureNotVerified;
      case Failure.expiredSession:
        return l10n.failureExpiredSession;
      case Failure.widgetTreeError:
        return l10n.failureWidgetTreeError;
    }
  }
}
