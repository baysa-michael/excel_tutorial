class KeyboardShortcut {
  final String keyCombination;
  final String description;
  final List<String> tags;

  KeyboardShortcut({
    required this.keyCombination,
    required this.description,
    required this.tags
  });

  @override
  String toString() {
    return "'$keyCombination':  $description";
  }
}