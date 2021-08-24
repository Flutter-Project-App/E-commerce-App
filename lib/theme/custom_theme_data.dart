import 'dart:ui';

import 'package:flutter/material.dart';

class CustomThemeData {
  Color? colorSaleHot;
  Color? onColorSaleHot;
  CustomThemeData({this.colorSaleHot, this.onColorSaleHot});

  factory CustomThemeData.light() {
    return CustomThemeData(
      colorSaleHot: const Color(0xFFDB3022),
      onColorSaleHot: Colors.white
    );
  }
}