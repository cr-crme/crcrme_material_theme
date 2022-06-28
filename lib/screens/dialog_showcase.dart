import 'package:flutter/material.dart';

class DialogShowcase extends StatelessWidget {
  const DialogShowcase({Key? key}) : super(key: key);

  static const routeName = '/dialog-showcase';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Showcase")),
      body: Center(
          child: Column(
        children: [
          DatePickerDialog(
              initialDate: DateTime(2021, 2, 15),
              firstDate: DateTime(2021),
              lastDate: DateTime(2022)),
        ],
      )),
    );
  }
}
