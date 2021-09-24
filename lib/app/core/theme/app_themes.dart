import 'package:flutter/material.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const Color primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class AppTheme {
  static final light = ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: primaryClr,
          ),
      brightness: Brightness.light);
  static final dark = ThemeData(
    brightness: Brightness.dark,
  );
}
