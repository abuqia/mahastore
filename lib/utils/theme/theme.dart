import 'package:flutter/material.dart';
import 'package:mahastore/utils/theme/custom_theme/appbar_theme.dart';
import 'package:mahastore/utils/theme/custom_theme/botton_sheet_theme.dart';
import 'package:mahastore/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:mahastore/utils/theme/custom_theme/chip_theme.dart';
import 'package:mahastore/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:mahastore/utils/theme/custom_theme/text_field_theme.dart';
import 'package:mahastore/utils/theme/custom_theme/text_theme.dart';
import 'package:mahastore/utils/theme/custom_theme/elevated_button_theme.dart';


class MahaAppTheme {
  MahaAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MahaTextTheme.lightTextTheme,
    chipTheme: MahaChipTheme.lightChipTheme,
    appBarTheme: MahaAppBarTheme.lightAppBarTheme,
    checkboxTheme: MahaCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MahaBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MahaElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MahaOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MahaTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MahaTextTheme.darkTextTheme,
    chipTheme: MahaChipTheme.darkChipTheme,
    appBarTheme: MahaAppBarTheme.darkAppBarTheme,
    checkboxTheme: MahaCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MahaBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MahaElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MahaOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MahaTextFormFieldTheme.darkInputDecorationTheme,
  );
}