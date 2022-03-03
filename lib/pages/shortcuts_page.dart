import 'package:flutter/material.dart';
import '../model/keyboard_shortcut.dart';
import '../data/shortcut_list.dart';

class ShortcutsPage extends StatefulWidget {
  const ShortcutsPage({Key? key}) : super(key: key);

  @override
  _ShortcutsPageState createState() => _ShortcutsPageState();
}

class _ShortcutsPageState extends State<ShortcutsPage> {
  final List<KeyboardShortcut> _shortcutsList = shortcuts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _shortcutsList.length,
      itemBuilder: (BuildContext context, int position) {
        return _buildShortcutRow(_shortcutsList[position]);
      }
    );
  }

  Widget _buildShortcutRow(KeyboardShortcut shortcut) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 2.0
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(3.0, 5.0)
          )
        ],
        color: Colors.white
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                      shortcut.tags.toString().replaceAll("[", "").replaceAll("]", ""),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    textAlign: TextAlign.center,
                    softWrap: true
                  )
                ],
              ),
            ),
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shortcut.keyCombination,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                    softWrap: true
                  ),
                  Text(
                    shortcut.description,
                    softWrap: true
                  )
                ],
              ),
            ),
          ]
        ),
      )
/*
      ListTile(
        leading: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(

                )
              ),
              width: 50,
              child: Text(
                shortcut.tags.toString().replaceAll("[", "").replaceAll("]", ""),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                )
              ),
            ),
          ],
        ),
        title: Container(
          decoration: BoxDecoration(
              border: Border.all(

              )
          ),
          child: Text(shortcut.keyCombination),
          margin: const EdgeInsets.only(bottom: 4.0)
        ),
        subtitle: Container(
          decoration: BoxDecoration(
              border: Border.all(

              )
          ),
          child: Text(shortcut.description)
        ),
      ),
*/
    );
  }
}

