import 'package:flutter/material.dart';

class InputShowcase extends StatefulWidget {
  const InputShowcase({super.key});

  static const routeName = '/form-showcase';

  @override
  State<InputShowcase> createState() => _InputShowcaseState();
}

class _InputShowcaseState extends State<InputShowcase> {
  final _formKey = GlobalKey<FormState>();

  String _dropdownValue = 'Photo';
  bool _checkbox = false;
  bool _radio = false;
  double _slider = 10;
  bool _switchh = false;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: const Text('Input Showcase')),
      body: Center(
        child: Form(
            key: _formKey,
            child: RadioGroup<bool>(
              groupValue: _radio,
              onChanged: (value) => setState(() => _radio = value!),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Text Form Field'),
                    ),
                  ),
                  ListTile(
                    title: const Text('Dropdown Button'),
                    trailing: DropdownButton<String>(
                      value: _dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      onChanged: (String? newValue) {
                        setState(() {
                          _dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Photo', 'Texte', 'Photo et Texte']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  CheckboxListTile(
                      title: const Text('Checkbox!'),
                      value: _checkbox,
                      onChanged: (bool? v) {
                        setState(() {
                          _checkbox = v!;
                        });
                      }),
                  const RadioListTile(title: Text('Radio 1'), value: false),
                  const RadioListTile(title: Text('Radio 2'), value: true),
                  Slider(
                    value: _slider,
                    onChanged: (double v) {
                      setState(() {
                        _slider = v;
                      });
                    },
                    min: 0,
                    max: 100,
                  ),
                  SwitchListTile(
                      title: const Text('Switch'),
                      value: _switchh,
                      onChanged: (bool v) {
                        setState(() {
                          _switchh = v;
                        });
                      }),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                              onPressed: () {
                                showDatePicker(
                                    context: context,
                                    initialDate: DateTime(2021, 2, 15),
                                    firstDate: DateTime(2021),
                                    lastDate: DateTime(2022));
                              },
                              child: const Text('Date Picker')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                              onPressed: () {
                                showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now());
                              },
                              child: const Text('Time Picker')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    ));
  }
}
