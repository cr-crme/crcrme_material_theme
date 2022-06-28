import 'package:flutter/material.dart';

const Color white = Color(0xFFFFFFFF);
const Color black = Color(0xFF1c0f13);
const Color gray = Color(0xFF3D424A);
const Color disabled = Color(0xFF9CA1AA);
const Color blue = Color(0xFF57BEE6);
const Color orange = Color(0xFFFEAE49);
const Color background = Color(0xFFFAFAFA);
const Color error = Color(0xFFF02010);

ThemeData get theme {
  return ThemeData(
    fontFamily: "Open Sans",
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: blue,
        onPrimary: white,
        secondary: orange,
        onSecondary: white,
        error: error,
        onError: white,
        background: background,
        onBackground: black,
        surface: blue,
        onSurface: black),
    scaffoldBackgroundColor: background,
    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(white),
        fillColor: MaterialStateProperty.all(blue)),
    radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all(blue)),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith((states) =>
          states.contains(MaterialState.selected) ? blue : disabled),
      trackColor: MaterialStateProperty.resolveWith((states) =>
          states.contains(MaterialState.selected)
              ? blue.withAlpha(100)
              : disabled.withAlpha(80)),
    ),
    sliderTheme: SliderThemeData(
        thumbColor: blue,
        activeTrackColor: blue.withAlpha(100),
        inactiveTrackColor: disabled.withAlpha(80)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
            foregroundColor: MaterialStateProperty.all(white),
            backgroundColor: MaterialStateProperty.all(orange),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
            minimumSize: MaterialStateProperty.all(const Size(60, 60)),
            maximumSize: MaterialStateProperty.all(const Size(350, 60)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 40)),
            elevation: MaterialStateProperty.all(4))),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(white),
      backgroundColor: MaterialStateProperty.all(blue),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      minimumSize: MaterialStateProperty.all(const Size(40, 40)),
      maximumSize: MaterialStateProperty.all(const Size(250, 40)),
      padding:
          MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20)),
      elevation: MaterialStateProperty.all(2),
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(blue),
            backgroundColor: MaterialStateProperty.all(blue.withAlpha(15)),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
            side: MaterialStateProperty.all(
                const BorderSide(color: blue, width: 2)),
            minimumSize: MaterialStateProperty.all(const Size(40, 45)),
            maximumSize: MaterialStateProperty.all(const Size(250, 45)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20)),
            elevation: MaterialStateProperty.all(0))),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(foregroundColor: white),
  );
}
