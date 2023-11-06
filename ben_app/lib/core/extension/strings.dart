part of 'extension_export.dart';

extension OnString on String {
  Color toColor() {
    var hexColor = replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    if (hexColor.length == 8) {
      return Color(int.parse('0x$hexColor'));
    }
    return const Color(0xFFFFFFFF);
  }

  /// Returns string with capitalized first letter
  String capitalize() {
    return isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : this;
  }
}

extension OnNullableString on String? {
  bool isNumeric() {
    if (this == null) return false;

    return double.tryParse(this!) != null;
  }
}
