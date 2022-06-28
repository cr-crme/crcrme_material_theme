import 'package:flutter/material.dart';

class InputShowcase extends StatefulWidget {
  const InputShowcase({Key? key}) : super(key: key);

  static const routeName = '/form-showcase';

  @override
  State<InputShowcase> createState() => _InputShowcaseState();
}

class _InputShowcaseState extends State<InputShowcase> {
  final _formKey = GlobalKey<FormState>();

  String dropdownValue = "Photo";
  bool? isChecked = false;
  bool? radio = false;
  double slider = 10;
  bool switchh = false;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: const Text("Form Shwocase")),
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Email"),
                  ),
                ),
                ListTile(
                  title: const Text("Dropdown Button"),
                  trailing: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
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
                    title: const Text("Checkbox!"),
                    value: isChecked,
                    onChanged: (bool? v) {
                      setState(() {
                        isChecked = v;
                      });
                    }),
                RadioListTile(
                    title: const Text("Radio 1"),
                    value: false,
                    groupValue: radio,
                    onChanged: (bool? v) {
                      setState(() {
                        radio = v;
                      });
                    }),
                RadioListTile(
                    title: const Text("Radio 2"),
                    value: true,
                    groupValue: radio,
                    onChanged: (bool? v) {
                      setState(() {
                        radio = v;
                      });
                    }),
                Slider(
                  value: slider,
                  onChanged: (double v) {
                    setState(() {
                      slider = v;
                    });
                  },
                  min: 0,
                  max: 100,
                ),
                SwitchListTile(
                    title: const Text("Switch"),
                    value: switchh,
                    onChanged: (bool v) {
                      setState(() {
                        switchh = v;
                      });
                    }),
              ],
            )),
      ),
    ));
  }
}
