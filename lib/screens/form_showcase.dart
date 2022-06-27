import 'package:flutter/material.dart';

class FormShowcase extends StatefulWidget {
  const FormShowcase({Key? key}) : super(key: key);

  static const routeName = '/form-showcase';

  @override
  State<FormShowcase> createState() => _FormShowcaseState();
}

class _FormShowcaseState extends State<FormShowcase> {
  final _formKey = GlobalKey<FormState>();

  String dropdownValue = "One";

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: const Text("Form Shwocase")),
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: "Email"),
                  initialValue: "mail@example.com",
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text("TItiel"),
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['One', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    ));
  }
}
