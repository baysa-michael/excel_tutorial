import 'package:flutter/material.dart';
import 'formulas_page.dart';
import 'shortcuts_page.dart';
import '../strings.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _tabs = [
    const ShortcutsPage(),
    const FormulasPage()
  ];

  int _currentPage = 0;

  _onTap(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle)
      ),
      body: IndexedStack(
        index: _currentPage,
        children: [..._tabs]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            label: 'Keyboard Shortcuts',
            icon: Icon(Icons.keyboard)
          ),
          BottomNavigationBarItem(
            label: 'Excel Formulas',
            icon: Icon(Icons.calculate_rounded)
          )
        ]
      ),
    );
  }
}

