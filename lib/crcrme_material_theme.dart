import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color white = Color(0xFFFFFFFF);
const Color black = Color(0xFF1c0f13);
const Color gray = Color(0xFF3D424A);
const Color disabled = gray;
const Color blue = Color(0xFF357a97);
const Color orange = Color(0xFFC75205);
const Color background = Color(0xFFFAFAFA);
const Color error = Color(0xFFF62828);

ThemeData get crcrmeMaterialTheme {
  final titleMedium = GoogleFonts.openSans(
      textStyle: ThemeData()
          .textTheme
          .titleMedium!
          .copyWith(fontWeight: FontWeight.w600));

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
      onSurface: black,
      surface: white,
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
          titleMedium: titleMedium,
          titleSmall: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 14)),
          bodyLarge: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w400)),
          bodyMedium: GoogleFonts.openSans(
              textStyle: ThemeData()
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 14)),
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
    cardTheme: CardThemeData(surfaceTintColor: Colors.grey[100]!),
    dialogTheme: const DialogThemeData(surfaceTintColor: white),
    scaffoldBackgroundColor: background,
    appBarTheme:
        const AppBarTheme(backgroundColor: blue, foregroundColor: Colors.white),
    tabBarTheme: TabBarThemeData(
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
      checkColor: WidgetStateProperty.all(white),
      side: const BorderSide(color: blue, width: 2),
      fillColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.grey;
          } else if (states.contains(WidgetState.selected)) {
            return blue;
          } else {
            return white;
          }
        },
      ),
    ),
    radioTheme: RadioThemeData(fillColor: WidgetStateProperty.all(blue)),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected) ? blue : disabled),
      trackColor: WidgetStateProperty.resolveWith((states) =>
          states.contains(WidgetState.selected)
              ? blue.withAlpha(100)
              : disabled.withAlpha(80)),
      trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
    ),
    listTileTheme: ListTileThemeData(
      titleTextStyle: titleMedium.copyWith(
          fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
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
            textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 20)),
            foregroundColor: WidgetStateProperty.all(white),
            backgroundColor: WidgetStateProperty.resolveWith((states) =>
                states.contains(WidgetState.disabled) ? gray : orange),
            surfaceTintColor: WidgetStateProperty.all(white),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
            minimumSize: WidgetStateProperty.all(const Size(60, 60)),
            maximumSize: WidgetStateProperty.all(const Size(350, 60)),
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 40)),
            elevation: WidgetStateProperty.all(4))),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(white),
            backgroundColor: WidgetStateProperty.all(blue),
            surfaceTintColor: WidgetStateProperty.all(white),
            shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
            minimumSize: WidgetStateProperty.all(const Size(40, 40)),
            maximumSize: WidgetStateProperty.all(const Size(250, 100)),
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20)),
            elevation: WidgetStateProperty.all(2),
            alignment: Alignment.center)),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(blue),
            backgroundColor: WidgetStateProperty.all(blue.withAlpha(15)),
            surfaceTintColor: WidgetStateProperty.all(white),
            shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
            side: WidgetStateProperty.all(
                const BorderSide(color: blue, width: 2)),
            minimumSize: WidgetStateProperty.all(const Size(40, 40)),
            maximumSize: WidgetStateProperty.all(const Size(250, 45)),
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20)),
            elevation: WidgetStateProperty.all(0))),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(foregroundColor: white),
  );
}
