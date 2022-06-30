# CR-CRME Material Theme

This is the official Material theme for the CR-CRME.  
This theme affects all material widgets.

## Screenshots

Here are some screenshots of what this theme look like.

Buttons :  
![Buttons](images/buttons.png)

Simple value inputs :  
![Some inputs](images/inputs.png)

## Usage

Simply add this package as a dependency to your project :

```bash
pub get crcrme_material_theme
```

Then, import and use the theme in your MaterialApp widget :

```dart
import 'package:crcrme_material_theme/crcrme_material_theme.dart';

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: crcrmeMaterialTheme,
            [...]
        );
    }
}
```
