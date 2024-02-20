import 'package:ebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_style.dart';

class BookDetailedPageButton extends StatelessWidget {
  const BookDetailedPageButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 48,
              child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Text('19.99€', style: AppStyle.styleMedium18.copyWith(color: Colors.black),)
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 48,
              child: MaterialButton(
                  onPressed: () {},
                  color: AppColors.orange,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Text('Free preview', style: AppStyle.styleMedium18.copyWith(color: Colors.white),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}