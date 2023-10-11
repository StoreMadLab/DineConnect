import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNewsreader => theme.textTheme.bodyLarge!.newsreader;
  static get bodyLargeNicoMoji => theme.textTheme.bodyLarge!.nicoMoji;
  static get bodyLargeNicoMojiOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.nicoMoji.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimaryLight => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallNicoMojiOnPrimaryContainer =>
      theme.textTheme.bodySmall!.nicoMoji.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Headline text style
  static get headlineLarge30 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 30.fSize,
      );
  static get headlineLargeErrorContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeErrorContainer_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get headlineLargeIndigo80001 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.indigo80001,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeIndigo80001SemiBold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.indigo80001,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeInter => theme.textTheme.headlineLarge!.inter;
  static get headlineLargePoppins =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallInterOnError =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallInterOnErrorRegular =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallInterOnError_1 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.onError,
      );
  static get headlineSmallInterOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallNicoMojiOnError =>
      theme.textTheme.headlineSmall!.nicoMoji.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallOnError => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w400,
      );
  // Title text style
  static get titleLargeBlue800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue800,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.59),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeIndigo80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo80001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter;
  static get titleLargeInter22 => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeLight => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get titleLargeNicoMoji => theme.textTheme.titleLarge!.nicoMoji;
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargeOnPrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargeRedA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA700,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNewsreader => theme.textTheme.titleMedium!.newsreader;
  static get titleMediumNewsreaderBlue800 =>
      theme.textTheme.titleMedium!.newsreader.copyWith(
        color: appTheme.blue800,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallInterOnPrimaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
}

extension on TextStyle {
  TextStyle get nicoMoji {
    return copyWith(
      fontFamily: 'Nico Moji',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get newsreader {
    return copyWith(
      fontFamily: 'Newsreader',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
