import 'package:flutter/material.dart';

class DialogShowcase extends StatelessWidget {
  const DialogShowcase({Key? key}) : super(key: key);

  static const routeName = '/dialog-showcase';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog Showcase")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: const Text("Alert Dialog"),
                            content: const Text(
                                "Consequatur laudantium nisi odio assumenda. Omnis et nobis ullam impedit. Deleniti ut rem cupiditate qui est porro neque. Deleniti unde deserunt sequi ut doloremque. Et molestiae eos consequatur deleniti eos aut sapiente nesciunt."),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context, "OK"),
                                  child: const Text("OK"))
                            ],
                          ));
                },
                child: const Text("Alert Dialog")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => BottomSheet(
                          onClosing: () {},
                          builder: (BuildContext context) => const Padding(
                                padding: EdgeInsets.all(30.0),
                                child: Text(
                                    "Rerum porro ut modi atque cupiditate. Voluptatibus adipisci id veritatis dolore sed placeat molestiae. Officiis assumenda pariatur sit."),
                              )));
                },
                child: const Text("Bottom Sheet")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      action: SnackBarAction(
                        label: "Annuler",
                        onPressed: () {},
                      ),
                      content: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.check),
                          ),
                          Text("Enregistré"),
                        ],
                      )));
                },
                child: const Text("Snack Bar")),
          ),
        ],
      )),
    );
  }
}
