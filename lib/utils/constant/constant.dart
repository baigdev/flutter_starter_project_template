import 'package:app_template/utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

import '../../widgets/responsive.dart';

enum BuildFlavor { staging, production }

const String _jsonDirectory = "assets/json";
const String _fontsDirectory = "assets/fonts";
const String _iconsDirectory = "assets/icons";

class AppImages {
  static final AppImages _instance = AppImages._internal();

  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory AppImages() {
    return _instance;
  }

  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  AppImages._internal();

  static const String appIcon = "$_iconsDirectory/app_logo.png";
}

class AppFonts {
  static final AppFonts _instance = AppFonts._internal();

  factory AppFonts() {
    return _instance;
  }

  AppFonts._internal();
}

class AppFontWeight {
  static final AppFontWeight _instance = AppFontWeight._internal();

  factory AppFontWeight() {
    return _instance;
  }

  AppFontWeight._internal();

  FontWeight boldFontWeight = FontWeight.w700;
  FontWeight semiBoldFontWeight = FontWeight.w600;
  FontWeight lightFontWeight = FontWeight.w500;
  FontWeight thinFontWeight = FontWeight.w400;
}

class AppJson {
  static final AppJson _instance = AppJson._internal();

  factory AppJson() {
    return _instance;
  }

  AppJson._internal();

  String get appLightThemeJson => "$_jsonDirectory/app_light_theme.json";
}

class AppUtils {
  static final AppUtils _instance = AppUtils._internal();

  factory AppUtils() {
    return _instance;
  }

  AppUtils._internal();

  static const String dateFormatter = "yyyy-MM-dd";

  BuildFlavor currentBuildFlavor = BuildFlavor.staging;

  static const double paddingAllSides = 14;
  static const double paddingVertical = 10;
  static const double paddingHorizontal = 14;
  static const double paddingCard = 8;
  static const double appTextFieldPadding = 20;
  static BorderRadius kBorderRadiusCircular = BorderRadius.circular(15);

  static double kAppButtonWidth(BuildContext context) => getResponsiveValue(
        context,
        context.screenWidth,
      );

  static double kAppButtonHeight(BuildContext context) => getResponsiveValue(
        context,
        50,
      );

  static SizedBox sizedBoxHeight(
    BuildContext context, {
    double defaultValue = 20,
  }) =>
      SizedBox(
        height: getResponsiveValue(
          context,
          defaultValue,
        ),
      );

  static SizedBox sizedBoxWidth(
    BuildContext context, {
    double defaultValue = 10,
  }) =>
      SizedBox(
        height: getResponsiveValue(
          context,
          defaultValue,
        ),
      );
}

class SupportedLanguageLocales {
  static const String engLangCode = "en";

  /*id: as per the locale given by the flutter framework.*/
  static const String inuktitutLocale = "id";
  static const String engLangFullName = "English";
  static const String inuktitutLangFullName = "Inuktitut";
  static String currentLocale = engLangCode;



}
