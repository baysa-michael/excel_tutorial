import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Excel Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AppContainer(title: Strings.appTitle),
    );
  }
}

class AppContainer extends StatefulWidget {
  const AppContainer({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AppContainer> createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {

  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}
