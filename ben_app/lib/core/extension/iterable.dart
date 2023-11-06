part of 'extension_export.dart';

extension IterableX<T> on Iterable<T> {
  T? findOrNull(bool Function(T element) predicate) => cast<T?>().firstWhere(
        (element) => predicate(element as T),
        orElse: () => null,
      );
}

extension ListX<T> on List<T> {
  T? elementAtOrNull(int index) {
    if (index >= length) return null;
    return elementAt(index);
  }
}
