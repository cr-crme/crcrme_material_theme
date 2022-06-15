import 'package:flutter/material.dart';

import '../widgets/buttons/crcrme_elevated_button.dart';
import '../widgets/screens/crcrme_scaffold.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  static const routeName = '/button-screen';

  @override
  Widget build(BuildContext context) {
    return CrcrmeScaffold(
      appBar: AppBar(
        title: const Text('Button showcase'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CrcrmeElevatedButton(
              onPressed: () {},
              child: const Text('Coucou'),
            ),
          ],
        ),
      ),
    );
  }
}
