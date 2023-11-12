enum InputFailure implements Exception {
  emailRequired,
  strongPasswordRequired,
  strongPasswordLength,
  fieldRequired,
  fieldLength,
  fieldForbiddenCharacter,
  dateInvalid,
  listNotFound,
  passwordDontMatch,
  other,
  intValidation,
}
