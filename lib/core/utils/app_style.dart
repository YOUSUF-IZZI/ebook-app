import 'package:ebook/core/helper/get_responsive_font_size.dart';
import 'package:ebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyle {
  // Regular
  static TextStyle styleRegular14 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 14),
    color: AppColors.grey,
    fontFamily: 'Lora',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular16 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular18 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular20 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular26 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 26),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular30 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 30),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w400,
  );

  // Medium
  static TextStyle styleMedium14 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium16 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium18 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium20 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium24 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w500,
  );

  // SemiBold
  static TextStyle styleSemiBold26 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 26),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold32 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 32),
    fontFamily: 'Lora',
    fontWeight: FontWeight.w600,
  );
}
