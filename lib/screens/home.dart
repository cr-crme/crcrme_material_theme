import 'package:crcrme_flutter_template/screens/button_showcase.dart';
import 'package:crcrme_flutter_template/screens/input_showcase.dart';
import 'package:crcrme_flutter_template/screens/dialog_showcase.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> _selected = [true, false];
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CR CRME Flutter Template"),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          ListTile(
            title: const Text("Button Showcase"),
            onTap: () => Navigator.pushNamed(context, ButtonShowcase.routeName),
          ),
          ListTile(
            title: const Text("Input Showcase"),
            onTap: () => Navigator.pushNamed(context, InputShowcase.routeName),
          ),
          ListTile(
            title: const Text("Dialog Showcase"),
            onTap: () => Navigator.pushNamed(context, DialogShowcase.routeName),
          ),
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          children: [
            const Text(
                "Voici une application qui montre tous (presque) les widgets Flutter ainsi que leur theme !"),
            const Text("Naviguez via le Drawer en haut à gauche !"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Card"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Chip(label: Text("Chip 1")),
                          Chip(label: Text("Chip 2")),
                          Chip(label: Text("Chip 3"))
                        ],
                      ),
                      const Divider(),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      ),
                      const LinearProgressIndicator(
                        value: null,
                      ),
                      const Divider(),
                      DataTable(
                          onSelectAll: (value) {
                            setState(() {
                              _selected = [value!, value];
                            });
                          },
                          columns: const [
                            DataColumn(label: Text("Column 1")),
                            DataColumn(label: Text("Column 2")),
                            DataColumn(label: Text("Column 3"))
                          ],
                          rows: [
                            DataRow(
                                selected: _selected[0],
                                onSelectChanged: (bool? v) {
                                  setState(() {
                                    _selected[0] = v!;
                                  });
                                },
                                cells: const [
                                  DataCell(Text("Cell 1-1")),
                                  DataCell(Text("Cell 1-2")),
                                  DataCell(Text("Cell 1-3"))
                                ]),
                            DataRow(
                                selected: _selected[1],
                                onSelectChanged: (bool? v) {
                                  setState(() {
                                    _selected[1] = v!;
                                  });
                                },
                                cells: const [
                                  DataCell(Text("Cell 2-1")),
                                  DataCell(Text("Cell 2-2")),
                                  DataCell(Text("Cell 2-3"))
                                ])
                          ])
                    ],
                  ),
                ),
              ),
            ),
            Stepper(
                currentStep: _currentStep,
                onStepContinue: () {
                  setState(() {
                    _currentStep += 1;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    _currentStep = 0;
                  });
                },
                steps: const [
                  Step(
                      title: Text("Step 1"),
                      content: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet ultrices nisi.")),
                  Step(
                      title: Text("Step 2"),
                      content: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet ultrices nisi.")),
                  Step(
                      title: Text("Step 3"),
                      content: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet ultrices nisi."))
                ])
          ],
        )),
      ),
    );
  }
}
