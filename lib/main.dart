import 'package:flutter/material.dart';

import 'main_theme.dart';
import './screens/buttons_showcase.dart';

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
      initialRoute: ButtonsShowcase.routeName,
      routes: {
        ButtonsShowcase.routeName: (context) => const ButtonsShowcase(),
      },
    );
  }
}
