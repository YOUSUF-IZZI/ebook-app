import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';

class BookPricing extends StatelessWidget {
  const BookPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: AppColors.yellow,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '4.5',
          style: AppStyle.styleRegular16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '(2390)',
          style: AppStyle.styleRegular16.copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}
