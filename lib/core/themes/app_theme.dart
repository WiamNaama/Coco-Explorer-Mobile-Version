import 'package:coco_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      //Text theme
      textTheme: const TextTheme(
        subtitle1: TextStyle(
          fontSize: 20,
          color: buttonTextColor,
          fontWeight: FontWeight.w500,
        ),
        button: TextStyle(
          fontSize: 16,
          color: buttonColor,
          fontWeight: FontWeight.w700,
        ),
        bodyText1: TextStyle(
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
