import 'package:flutter/material.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/theme/custom_themes/appbar_theme.dart';
import 'package:sportshop/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:sportshop/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:sportshop/utils/theme/custom_themes/chip_theme.dart';
import 'package:sportshop/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:sportshop/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:sportshop/utils/theme/custom_themes/text_field_theme.dart';
import 'package:sportshop/utils/theme/custom_themes/text_theme.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: MColors.grey,
    brightness: Brightness.light,
    primaryColor: MColors.primary,
    textTheme: MTextTheme.lightTextTheme,
    chipTheme: MChipTheme.lightChipTheme,
    scaffoldBackgroundColor: MColors.white,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    checkboxTheme: MCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: MTextTheme.darkTextTheme,
    chipTheme: MChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
    checkboxTheme: MCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.darkInputDecorationTheme,
  );
}
