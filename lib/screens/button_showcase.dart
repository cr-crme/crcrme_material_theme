import 'package:crcrme_flutter_template/screens/input_showcase.dart';
import 'package:flutter/material.dart';

class ButtonShowcase extends StatelessWidget {
  const ButtonShowcase({Key? key}) : super(key: key);

  static const routeName = '/button-showcase';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button showcase'),
      ),
      drawer: Drawer(
          child: Column(
        children: const [Text("data"), Text("data")],
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Vrai bouton flutter")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {}, child: const Text("Text button pog")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {}, child: const Text("Outlined this time :o")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, InputShowcase.routeName);
                  },
                  child: const Text("Navigate to form showcase :)")),
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.edit)),
    );
  }
}
