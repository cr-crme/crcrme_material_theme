import 'package:flutter/material.dart';

import 'main_theme.dart';
import './showcase/buttons_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CR-CRME theme',
      theme: theme,
      initialRoute: ButtonsScreen.routeName,
      routes: {
        ButtonsScreen.routeName: (context) => const ButtonsScreen(),
      },
    );
  }
}
