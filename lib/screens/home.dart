import 'package:crcrme_flutter_template/screens/button_showcase.dart';
import 'package:crcrme_flutter_template/screens/input_showcase.dart';
import 'package:crcrme_flutter_template/screens/dialog_showcase.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/';

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
          children: const [
            Text(
                "Voici une application qui montre tous (presque) les widgets Flutter ainsi que leur theme !"),
            Text("Naviguez via le Drawer en haut à gauche !")
          ],
        )),
      ),
    );
  }
}
