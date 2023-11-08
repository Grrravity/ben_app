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
        return 'other';
      case InputFailure.invalidEmail:
        return 'invalidEmail';
      case InputFailure.requiredField:
        return 'requiredField';
    }
  }
}

extension ArbFailureX on Failure {
  String localized(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case Failure.connectivity:
        return 'connectivity';
      case Failure.other:
        return 'other';
      case Failure.authentication:
        return 'authentication';
      case Failure.passwordsNotIdenticals:
        return 'passwordsNotIdenticals';
      case Failure.unauthorized:
        return 'unauthorized';
      case Failure.invalidCommand:
        return 'invalidCommand';
      case Failure.elementNotFound:
        return 'elementNotFound';
      case Failure.emailNotValid:
        return 'emailNotValid';
      case Failure.textIsEmpty:
        return 'textIsEmpty';
      case Failure.notVerified:
        return 'notVerified';
      case Failure.expiredSession:
        return 'expiredSession';
      case Failure.widgetTreeError:
        return 'widgetTreeError';
    }
  }
}
