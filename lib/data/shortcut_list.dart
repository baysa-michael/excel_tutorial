import '../model/keyboard_shortcut.dart';

List<KeyboardShortcut> shortcuts = [
  KeyboardShortcut(
    keyCombination: "Ctrl + C",
    description: "Copies the selected cell or range of cells to the clipboard",
    tags: [
      "Copy"
    ]
  ),
  KeyboardShortcut(
    keyCombination: "Ctrl + X",
    description: "Designates a range to be moved on the next Paste action",
    tags: [
      "Cut",
      "Move"
    ]
  ),
  KeyboardShortcut(
    keyCombination: "Ctrl + V",
    description: "Pastes the current clipboard content",
    tags: [
      "Paste"
    ]
  ),
  KeyboardShortcut(
    keyCombination: "Ctrl + S",
    description: "Saves the current workbook at its currently designated location - If not previously defined, a dialog box will open prompting the user to identify a target destination and filename for the save",
    tags: [
      "Save"
    ]
  ),
  KeyboardShortcut (
    keyCombination: "F2",
    description: "Enters the Formula Bar of the currently active cell for editing purposes",
    tags: [
      "Editing"
    ]
  ),
  KeyboardShortcut(
    keyCombination: "F12",
    description: "Opens a dialog box and prompts the user to identify a target destination and filename to use in saving the current file",
    tags: [
      "Save"
    ]
  ),
  KeyboardShortcut(
    keyCombination: "Shift + Space",
    description: "Highlights the rows of the currently active range on the spreadsheet",
    tags: [
      "Selection"
    ]
  ),
  KeyboardShortcut(
      keyCombination: "Ctrl + Space",
      description: "Highlights the columns of the currently active range on the spreadsheet",
      tags: [
        "Selection"
      ]
  ),
  KeyboardShortcut(
    keyCombination: "Ctrl + D",
    description: "Copies the formulas from the range above the currently active cell/range into the active cell/range",
    tags: [
      "Copy",
      "Paste"
    ]
  ),
  KeyboardShortcut(
      keyCombination: "Ctrl + R",
      description: "Copies the formulas from the range directly to the left of the currently active cell/range into the active cell/range",
      tags: [
        "Copy",
        "Paste"
      ]
  )
];