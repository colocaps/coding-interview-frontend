// ignore_for_file: deprecated_member_use

import 'package:exchange_caclculator/design_system/theme/ef_colors.dart';
import 'package:exchange_caclculator/design_system/theme/ef_font_sizes.dart';
import 'package:exchange_caclculator/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

abstract class EFTheme {
  static const String _fontFamily = FontFamily.poppins;

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      primaryColor: Colors.transparent,
      primaryColorDark: const Color(0xff003c69),
      primaryColorLight: const Color(0xff11c2cd),
      disabledColor: const Color(0xff606166),
      highlightColor: Colors.black,
      scaffoldBackgroundColor: Colors.white,
      canvasColor: Colors.transparent,
      brightness: Brightness.light,
      textSelectionTheme: _lighTextSelectionData(),
      inputDecorationTheme: _lightInputDecorationTheme(),
      elevatedButtonTheme: _lightElevatedButtonTheme(),
      outlinedButtonTheme: _lightOutlineTextButtonTheme(),
      textTheme: _lightTextTheme(_fontFamily),
      textButtonTheme: _lightTextButtonTheme(),
      appBarTheme: _lightAppBarTheme(),
      bottomSheetTheme: _lighBottomSheetThemeData(),
      iconButtonTheme: _lightIconButtonTemeData(),
      bottomAppBarTheme: _lightBottomAppBarTheme(),
      bottomNavigationBarTheme: _lightBottomNavigationBarThemeData(),
      navigationBarTheme: _lightNavigationBarThemeData(),
      cardTheme: const CardTheme(surfaceTintColor: Color(0xffF7FCF7)),
      dropdownMenuTheme: _lighDropdownMenuThemeData(),
    );
  }

  static DropdownMenuThemeData _lighDropdownMenuThemeData() {
    return DropdownMenuThemeData(
      textStyle: const TextStyle(color: Colors.white),
      inputDecorationTheme: _lightInputDecorationTheme(),
      menuStyle: const MenuStyle(),
    );
  }

  static BottomSheetThemeData _lighBottomSheetThemeData() {
    return const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    );
  }

  static NavigationBarThemeData _lightNavigationBarThemeData() {
    return NavigationBarThemeData(
      indicatorColor: Colors.lightGreen.shade200,
      labelTextStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static BottomNavigationBarThemeData _lightBottomNavigationBarThemeData() {
    return const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff003c69),
      selectedItemColor: EFColors.white,
      unselectedItemColor: EFColors.darkGrey,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    );
  }

  static BottomAppBarTheme _lightBottomAppBarTheme() {
    return const BottomAppBarTheme(
      color: Color(0xff003c69),
    );
  }

  static AppBarTheme _lightAppBarTheme() {
    return const AppBarTheme(
      color: EFColors.black,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

  static IconButtonThemeData _lightIconButtonTemeData() {
    return IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
    );
  }

  static TextButtonThemeData _lightTextButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: EFColors.secondary,
        padding: const EdgeInsets.all(8),
        backgroundColor: EFColors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: EFColors.transparent,
            width: 0,
          ),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        elevation: 0,
      ),
    );
  }

  static OutlinedButtonThemeData _lightOutlineTextButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: EFColors.shadow,
        fixedSize: const Size(328, 48),
        padding: const EdgeInsets.all(8),
        backgroundColor: EFColors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: const BorderSide(
          color: EFColors.primary,
          width: 2,
        ),
        elevation: 2,
      ),
    );
  }

  static TextSelectionThemeData _lighTextSelectionData() {
    return const TextSelectionThemeData(
      cursorColor: EFColors.inputLabelColor,
    );
  }

  static ElevatedButtonThemeData _lightElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(8),
        backgroundColor: EFColors.secondary,
        disabledBackgroundColor: EFColors.primary.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
      ),
    );
  }

  static InputDecorationTheme _lightInputDecorationTheme() {
    return const InputDecorationTheme(
      suffixIconColor: Colors.black,
      prefixIconColor: Colors.black,
      labelStyle: TextStyle(color: EFColors.inputLabelColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: EFColors.inputBoderColor),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: EFColors.primary, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.redAccent),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.redAccent, width: 2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: EFColors.inputBoderColor),
      ),
      contentPadding: EdgeInsets.only(left: 15),
      fillColor: EFColors.inputBackgroundColor,
      helperStyle: TextStyle(color: Colors.black45, fontSize: 10),
      hintStyle: TextStyle(
        color: EFColors.inputLightIconColor,
        fontSize: 14,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: EFColors.secondary),
      ),
      iconColor: EFColors.inputLightIconColor,
    );
  }

  static TextTheme _lightTextTheme(String fontFamily) {
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: EFFontSizes.headline3FontSize,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      displayMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: EFFontSizes.headline2FontSize,
        color: Colors.grey,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: EFFontSizes.headline3FontSize + 2,
        color: Colors.grey,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: EFFontSizes.headline3FontSize + 2,
        color: Colors.grey,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: EFFontSizes.subtitle,
        color: Colors.grey,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: EFFontSizes.headline5FontSize,
        height: 1.3,
        color: Colors.grey,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: EFFontSizes.headlineLarge,
        height: 1.3,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: EFFontSizes.headline1FontSize,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        fontFamily: fontFamily,
        color: Colors.grey,
        fontSize: EFFontSizes.captionFontSize,
      ),
      labelLarge: TextStyle(
        fontFamily: fontFamily,
        color: Colors.white,
        fontSize: EFFontSizes.buttonFontSize,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontFamily: fontFamily,
        color: Colors.grey,
        fontSize: EFFontSizes.buttonFontSize,
      ),
    );
  }
}
