import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue700,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.blueA400,
        border: Border.all(
          color: appTheme.gray50,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
