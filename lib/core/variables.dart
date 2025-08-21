import 'dart:io';

import 'package:flutter/material.dart';
import 'package:taskati_app/core/assets.dart';

class ColorData {
  static const blue = Color(0xff4E5AE8);
  static const orange = Color(0xffFF8746);
  static const red = Color(0xffFF4667);
  static const black = Color(0xff121212);
  static const grey = Color(0xffB4AAAA);
  static const white = Color(0xffFFFFFF);
}

class variablesData {
  static var textwhiteToblack = ColorData.black; // black || white
  static var textwhiteTogrey = ColorData.grey; // grey || white
  static var pagecolor = ColorData.white; // white || black
  static var boxcolor = ColorData.white; // white || grey
  static var logo =
      AssetsData.logo_lottie_white; // lottie whitelogo || lottie black logo
  static var thembuttoncolor = ColorData.blue; // blue color || white color
  // user data
  static bool isblack = false;
  static File? Fuserimage;
  static String name = 'Guest';
}

class ConstData {
  //
  static const IconSize25 = 25.00;
  //
  static const Hpagepadding = EdgeInsets.symmetric(horizontal: 20);
  static const padding10 = EdgeInsets.all(10);
  // heights
  static const height10 = SizedBox(height: 10);
  static const height20 = SizedBox(height: 20);
  //
  static var raduis10 = BorderRadius.circular(10);
}

class StyleData {
  static const smfont = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: ColorData.white,
  );
  static const halffont = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: ColorData.white,
  );
  static const bigfont = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: ColorData.white,
  );
}
