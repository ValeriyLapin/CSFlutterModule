
extension StringExtension on String {
  String removeDocId() {
    int slashIndex = indexOf('/');
    if (slashIndex == -1) {
      return this;
    }
    return substring(slashIndex + 1);
  }
}
