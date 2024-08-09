import 'package:flutter/material.dart';
import 'package:mahastore/utils/constants/sizes.dart';

class MahaSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MahaSizes.appBarHeight,
    left: MahaSizes.defaultSpace,
    bottom: MahaSizes.defaultSpace,
    right: MahaSizes.defaultSpace,
  );
}