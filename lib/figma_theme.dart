import 'package:flutter/material.dart';

const Color white = Color(0xFFF0F0F0);
const Color black = Color(0xFF202020);
const Color gray = Color(0xFF777777);
const Color blue = Color(0xFF0A51F7);
const Color orange = Color(0xFFF77F16);

ThemeData get theme {
  return ThemeData(
      fontFamily: "Open Sans",
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
          primary: blue, secondary: orange, background: white, outline: blue),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(orange),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              minimumSize: MaterialStateProperty.all(const Size(60, 60)),
              maximumSize: MaterialStateProperty.all(const Size(300, 60)),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 40)),
              elevation: MaterialStateProperty.all(6))),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(gray),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
              minimumSize: MaterialStateProperty.all(const Size(40, 40)),
              maximumSize: MaterialStateProperty.all(const Size(250, 40)),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 20)),
              elevation: MaterialStateProperty.all(4))),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(blue),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
              side: MaterialStateProperty.all(const BorderSide(color: blue, width: 2)),
              minimumSize: MaterialStateProperty.all(const Size(40, 40)),
              maximumSize: MaterialStateProperty.all(const Size(250, 40)),
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20)),
              elevation: MaterialStateProperty.all(0))),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(foregroundColor: Colors.white));
}
