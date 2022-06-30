import 'package:crcrme_material_theme/crcrme_material_theme.dart';
import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/button_showcase.dart';
import './screens/input_showcase.dart';
import './screens/dialog_showcase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CR-CRME theme',
      theme: crcrmeMaterialTheme,
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
