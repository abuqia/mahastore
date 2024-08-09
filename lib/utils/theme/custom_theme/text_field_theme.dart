import 'package:flutter/material.dart';
import 'package:mahastore/utils/constants/colors.dart';
import 'package:mahastore/utils/constants/sizes.dart';

class MahaTextFormFieldTheme {
  MahaTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MahaColors.darkGrey,
    suffixIconColor: MahaColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: MahaSizes.fontSizeMd, color: MahaColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: MahaSizes.fontSizeSm, color: MahaColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: MahaColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MahaColors.grey)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MahaColors.grey)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MahaColors.dark)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MahaColors.warning)
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MahaColors.warning)
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MahaColors.darkGrey,
    suffixIconColor: MahaColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: MahaSizes.fontSizeMd, color: MahaColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: MahaSizes.fontSizeSm, color: MahaColors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: MahaColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MahaColors.grey)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MahaColors.grey)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MahaColors.grey)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MahaColors.warning)
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MahaSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MahaColors.warning)
    ),
  );
}