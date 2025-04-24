import 'package:flutter/material.dart';
import 'package:project_1/src/utils/theme/widget_theme.dart';

class PAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: PTextTheme.light,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: PTextTheme.dark,
  );
}
