import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargeGray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001,
      );
  static get labelLargeRalewayGray800 =>
      theme.textTheme.labelLarge!.raleway.copyWith(
        color: appTheme.gray800,
      );
  // Title text style
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray600_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumGray70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnSecondaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnSecondaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleMediumPoppinsOnSecondaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallRaleway => theme.textTheme.titleSmall!.raleway;
  static get titleSmallRalewayBlueA400 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.blueA400,
      );
  static get titleSmallRalewayBlueA400Bold =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.blueA400,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRalewayPrimary =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get futura {
    return copyWith(
      fontFamily: 'Futura',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }
}
