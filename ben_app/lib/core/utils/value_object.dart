import 'package:ben_app/core/extension/extension_export.dart';
import 'package:equatable/equatable.dart';

typedef MultivalueValidator<T, F> = F? Function({
  required List<T> values,
  T? selectedValue,
});

// / Value that can be selected among a list.
// /
// / Essentially used to represent dropdown field value.
class MultiValueObject<T, F> with EquatableMixin {
  MultiValueObject({
    required this.values,
    T? selectedValue,
    F? failure,
    this.isEditable = true,
    this.validate,
  }) : selectedValue =
            _autoSelect(values) ?? _sanitizedSelection(selectedValue, values) {
    if (validate != null) {
      this.failure = validate!(selectedValue: selectedValue, values: values);
    } else {
      this.failure = failure;
    }
  }

  factory MultiValueObject.empty({
    bool isEditable = true,
    MultivalueValidator<T, F>? validate,
  }) =>
      MultiValueObject(
        values: <T>[],
        isEditable: isEditable,
        validate: validate,
      );

  /// Copies object and updates selected value.
  MultiValueObject<T, F> copyWithSelectedValue(
    T? selectedValue, {
    bool? isEditable,
  }) =>
      MultiValueObject(
        values: this.values,
        selectedValue: selectedValue,
        failure: this.failure,
        isEditable: isEditable ?? this.isEditable,
        validate: validate,
      );

  /// Copies object and updates selected value.
  MultiValueObject<T, F> copyWithSelectedValueWhere(
    bool Function(T) predicate, {
    bool? isEditable,
  }) =>
      MultiValueObject(
        values: this.values,
        selectedValue: values.findOrNull(predicate),
        failure: this.failure,
        isEditable: isEditable ?? this.isEditable,
        validate: validate,
      );

  /// Copies object and eventually updates available values and/or failure.
  /// If previously selected value is not available in new object, it is automatically de-selected.
  MultiValueObject<T, F> copyWith({
    List<T>? values,
    F? failure,
  }) =>
      MultiValueObject(
        values: values ?? this.values,
        selectedValue: selectedValue,
        failure: failure,
        validate: validate,
      );

  static T? _autoSelect<T>(
    List<T> values,
  ) =>
      values.length == 1 ? values.first : null;

  /// Returns a sanitized version of the selected value.
  ///
  /// It ensures selected value is available in
  /// the choices list.
  /// If not, returns null.
  static T? _sanitizedSelection<T>(
    T? selectedValue,
    List<T> values,
  ) {
    return values.cast<T?>().firstWhere(
          (value) => value == selectedValue,
          orElse: () => null,
        );
  }

  final List<T> values;
  final T? selectedValue;
  late final F? failure;
  final bool isEditable;
  final MultivalueValidator<T, F>? validate;

  bool get hasValue => selectedValue != null;
  bool get isValid => failure == null;

  @override
  List<Object?> get props => [values, selectedValue, failure];
}

/// Value that can be selected among a list.
///
/// Essentially used to represent dropdown field value.
///
/// If [shouldSanitizeSelection] is true, [selectedValues] is sanitized to match only [values] items.
/// Set [shouldSanitizeSelection] when you wan to keep selection even if some [values] are not available anymore (useful for search screens, for example).
class MultiSelectObject<T, F> with EquatableMixin {
  MultiSelectObject({
    this.shouldSanitizeSelection = true,
    required this.values,
    List<T>? selectedValues,
    this.failure,
    this.isEditable = true,
  }) {
    final sanitizedSelection = shouldSanitizeSelection
        ? _sanitizedSelection(selectedValues, values)
        : selectedValues ?? [];
    this.selectedValues = _autoSelect(this.values, sanitizedSelection);
  }

  factory MultiSelectObject.empty({
    bool shouldSanitizeSelection = true,
    bool isEditable = true,
  }) =>
      MultiSelectObject(
        values: <T>[],
        shouldSanitizeSelection: shouldSanitizeSelection,
        isEditable: isEditable,
      );

  /// Copies object and updates selected value.
  MultiSelectObject<T, F> copyWithSelectedValues(
    List<T> selectedValues, {
    bool? isEditable,
  }) =>
      MultiSelectObject(
        values: this.values,
        shouldSanitizeSelection: shouldSanitizeSelection,
        selectedValues: List.of(selectedValues),
        failure: this.failure,
        isEditable: isEditable ?? this.isEditable,
      ).copyWith(
        values: values,
      );

  MultiSelectObject<T, F> toggleSelectedValue(T interest) {
    final isValueAlreadySelected = this.selectedValues.contains(interest);
    if (isValueAlreadySelected) {
      return removeSelectedValue(interest);
    }
    return addSelectedValue(interest);
  }

  /// Copies object and updates selected values.
  MultiSelectObject<T, F> addSelectedValue(
    T selectedValueToAdd, {
    bool? isEditable,
  }) =>
      MultiSelectObject(
        values: this.values,
        shouldSanitizeSelection: shouldSanitizeSelection,
        selectedValues: [
          ...this.selectedValues,
          selectedValueToAdd,
        ],
        failure: this.failure,
        isEditable: isEditable ?? this.isEditable,
      );

  /// Copies object and updates selected values.
  MultiSelectObject<T, F> removeSelectedValue(
    T selectedValueToRemove, {
    bool? isEditable,
  }) =>
      MultiSelectObject(
        values: this.values,
        shouldSanitizeSelection: shouldSanitizeSelection,
        selectedValues: this
            .selectedValues
            .where((selectedValue) => selectedValue != selectedValueToRemove)
            .toList(),
        failure: this.failure,
        isEditable: isEditable ?? this.isEditable,
      );

  /// Copies object and updates selected value.
  MultiSelectObject<T, F> copyWithSelectedValueWhere(
    bool Function(T) predicate, {
    bool? isEditable,
  }) =>
      MultiSelectObject(
        values: this.values,
        shouldSanitizeSelection: shouldSanitizeSelection,
        selectedValues: values.where(predicate).toList(),
        failure: this.failure,
        isEditable: isEditable ?? this.isEditable,
      );

  /// Copies object and eventually updates available values and/or failure.
  /// If previously selected value is not available in new object, it is automatically de-selected.
  MultiSelectObject<T, F> copyWith({
    List<T>? values,
    F? failure,
  }) =>
      MultiSelectObject(
        shouldSanitizeSelection: shouldSanitizeSelection,
        values: values ?? this.values,
        selectedValues: selectedValues,
        failure: failure ?? this.failure,
      );

  static List<T> _autoSelect<T>(
    List<T> values,
    List<T> selectedValues,
  ) {
    if (selectedValues.isNotEmpty) return selectedValues;
    return values.length == 1 ? [values.first] : [];
  }

  /// Returns a sanitized version of the selected values.
  ///
  /// It ensures all the selected values are available in
  /// the choices list.
  /// If not, returns an empty list.
  static List<T> _sanitizedSelection<T>(
    List<T>? selectedValues,
    List<T> values,
  ) {
    if (selectedValues == null) return [];

    final isValid = selectedValues.cast<T?>().every((s) => values.contains(s));

    return isValid ? selectedValues : [];
  }

  final bool shouldSanitizeSelection;
  final List<T> values;
  late final List<T> selectedValues;
  final F? failure;
  final bool isEditable;

  bool get hasValue => selectedValues.isNotEmpty;
  bool get isValid => failure == null;

  /// Selected values which do not match any value.
  List<T> get orphansSelectedValues =>
      selectedValues.where((element) => !values.contains(element)).toList();

  /// Values which do not match any selected value.
  List<T> get unselectedValues =>
      values.where((element) => !selectedValues.contains(element)).toList();

  @override
  List<Object?> get props => [
        isEditable,
        values,
        selectedValues,
        failure,
      ];
}

/// A single item value.
/// Essentially used to represent text fields value.
class ValueObject<T, F> with EquatableMixin {
  const ValueObject({
    this.value,
    this.failure,
    required this.isEditable,
  });

  final T? value;
  final F? failure;
  final bool isEditable;

  bool get hasValue => value != null;
  bool get isValid => failure == null;

  ValueObject<T, F> copyWith({
    T? value,
    F? failure,
    bool? isEditable,
  }) =>
      ValueObject<T, F>(
        value: value ?? this.value,
        failure: failure ?? this.failure,
        isEditable: isEditable ?? this.isEditable,
      );

  @override
  List<Object?> get props => [value, failure, isEditable];
}
