import 'package:flutter/material.dart';

class AppSizeConfig {
  static late MediaQueryData mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double widthFactor;
  static late double heightFactor;
  static late double paddingHorizontal;
  static late double paddingVertical;
  static late double horizontalPaddingFactor;
  static late double verticalPaddingFactor;
  static late double textFactor;

  static void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    widthFactor = screenWidth / 100;
    heightFactor = screenHeight / 100;

    paddingHorizontal =
        mediaQueryData.padding.left + mediaQueryData.padding.right;
    paddingVertical =
        mediaQueryData.padding.top + mediaQueryData.padding.bottom;
    horizontalPaddingFactor = (screenWidth - paddingHorizontal) / 100;
    verticalPaddingFactor = (screenHeight - paddingVertical) / 100;
    textFactor = mediaQueryData.textScaleFactor;
  }
}
