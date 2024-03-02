import 'package:ebook/features/home/domain_layer/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.pages,
          color: AppColors.yellow,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          bookModel.volumeInfo.pageCount.toString(),
          style: AppStyle.styleRegular16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '(${bookModel.volumeInfo.language ?? 'en'})',
          style: AppStyle.styleRegular16.copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}
