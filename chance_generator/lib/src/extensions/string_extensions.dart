extension StringExtension on String {
  String unCapitalize() {
    return '${this[0].toLowerCase()}${substring(1).toUpperCase()}';
  }
}
