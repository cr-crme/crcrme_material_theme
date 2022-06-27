import 'package:crcrme_flutter_template/screens/form_showcase.dart';
import 'package:flutter/material.dart';

import 'test_theme.dart';
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
        FormShowcase.routeName: (context) => const FormShowcase(),
      },
    );
  }
}
