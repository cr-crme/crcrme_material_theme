import 'package:flutter/material.dart';

const Color white = Color(0xFFFFFFFF);
const Color black = Color(0xFF1c0f13);
const Color gray = Color(0xFF3D424A);
const Color blue = Color(0xFF57BEE6);
const Color red = Color(0xFFFEAE49);
const Color silver = Color(0xFF1E1E2A);
const Color withee = Color(0xFFE6E5DE);

ThemeData get theme {
  return ThemeData(
      fontFamily: "Open Sans",
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
          primary: blue, secondary: red, background: white, outline: blue),
      scaffoldBackgroundColor: withee,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 20)),
              foregroundColor: MaterialStateProperty.all(white),
              backgroundColor: MaterialStateProperty.all(red),
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
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
              minimumSize: MaterialStateProperty.all(const Size(40, 40)),
              maximumSize: MaterialStateProperty.all(const Size(250, 40)),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 20)),
              elevation: MaterialStateProperty.all(2))),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(blue),
              backgroundColor: MaterialStateProperty.all(blue.withAlpha(10)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
              side: MaterialStateProperty.all(
                  const BorderSide(color: blue, width: 2)),
              minimumSize: MaterialStateProperty.all(const Size(40, 40)),
              maximumSize: MaterialStateProperty.all(const Size(250, 40)),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 20)),
              elevation: MaterialStateProperty.all(0))),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(foregroundColor: white));
}
