import 'package:crcrme_flutter_template/screens/home.dart';
import 'package:crcrme_flutter_template/screens/button_showcase.dart';
import 'package:crcrme_flutter_template/screens/input_showcase.dart';
import 'package:crcrme_flutter_template/screens/dialog_showcase.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

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
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => const Home(),
        ButtonShowcase.routeName: (context) => const ButtonShowcase(),
        InputShowcase.routeName: (context) => const InputShowcase(),
        DialogShowcase.routeName: (context) => const DialogShowcase(),
      },
    );
  }
}
