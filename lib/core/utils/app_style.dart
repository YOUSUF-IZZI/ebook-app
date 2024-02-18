import 'package:ebook/core/helper/get_responsive_font_size.dart';
import 'package:flutter/material.dart';

abstract class AppStyle
{
  // Regular
  static TextStyle styleRegular14 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular16 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular18 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular20 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular26 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 26),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular30 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 30),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  // Medium
  static TextStyle styleMedium14 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium16 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium18 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
static TextStyle styleMedium20 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

}