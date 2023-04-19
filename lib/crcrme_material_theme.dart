import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color white = Color(0xFFFFFFFF);
const Color black = Color(0xFF1c0f13);
const Color gray = Color(0xFF3D424A);
const Color disabled = Color(0xFF9CA1AA);
const Color blue = Color(0xFF357a97);
const Color orange = Color(0xFFC75205);
const Color background = Color(0xFFFAFAFA);
const Color error = Color(0xFFF62828);

ThemeData get crcrmeMaterialTheme {
  return ThemeData(
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
      surface: white,
      onSurface: black,
    ),
    primaryColor: blue,
    disabledColor: disabled,
    textTheme: ThemeData()
        .textTheme
        .apply(displayColor: blue, bodyColor: black)
        .copyWith(
          headlineLarge: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: blue)
                  .copyWith(fontWeight: FontWeight.w600)),
          titleLarge: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .titleLarge!
                  .copyWith(color: blue)
                  .copyWith(fontWeight: FontWeight.w600)),
          headlineSmall: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w600)),
          headlineMedium: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w600)),
          titleMedium: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w600)),
          titleSmall: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w600)),
          bodyLarge: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w400)),
          bodyMedium: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w400)),
          bodySmall: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w400)),
          labelLarge: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .labelLarge!
                  .copyWith(fontWeight: FontWeight.w400)),
          labelMedium: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .labelMedium!
                  .copyWith(fontWeight: FontWeight.w400)),
          labelSmall: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .labelSmall!
                  .copyWith(fontWeight: FontWeight.w400)),
        ),
    scaffoldBackgroundColor: background,
    tabBarTheme: TabBarTheme(
      labelColor: white,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          color: white,
          width: 3,
        ),
      ),
      unselectedLabelColor: white.withAlpha(220),
      indicatorSize: TabBarIndicatorSize.tab,
    ),
    snackBarTheme: const SnackBarThemeData(
        actionTextColor: black,
        behavior: SnackBarBehavior.floating,
        backgroundColor: gray,
        contentTextStyle: TextStyle(fontSize: 16),
        disabledActionTextColor: disabled),
    dividerTheme: const DividerThemeData(
        color: orange, thickness: 1, indent: 10, endIndent: 10, space: 30),
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
    iconTheme: const IconThemeData(color: white),
    progressIndicatorTheme: ProgressIndicatorThemeData(
        color: orange, linearTrackColor: disabled.withAlpha(80)),
    chipTheme: const ChipThemeData(
        backgroundColor: blue,
        disabledColor: disabled,
        labelPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
        labelStyle: TextStyle(color: white, fontWeight: FontWeight.w600)),
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
            minimumSize: MaterialStateProperty.all(const Size(40, 40)),
            maximumSize: MaterialStateProperty.all(const Size(250, 45)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20)),
            elevation: MaterialStateProperty.all(0))),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(foregroundColor: white),
  );
}
