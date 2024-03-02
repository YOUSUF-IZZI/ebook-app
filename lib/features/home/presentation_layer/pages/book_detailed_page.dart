import 'package:ebook/core/utils/app_colors.dart';
import 'package:ebook/core/utils/app_style.dart';
import 'package:ebook/features/home/domain_layer/book_model/book_model.dart';
import 'package:ebook/features/home/presentation_layer/widgets/book_card.dart';
import 'package:ebook/features/home/presentation_layer/widgets/book_pricing.dart';
import 'package:ebook/features/home/presentation_layer/widgets/suggested_books_component.dart';
import 'package:flutter/material.dart';
import '../widgets/book_detailed_page_app_bar.dart';
import '../widgets/book_detailed_page_button.dart';

class BookDetailedPage extends StatelessWidget {
  const BookDetailedPage({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BookDetailedPageAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: BookCard(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail!,
                height: 0.35,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              bookModel.volumeInfo.title!,
              style: AppStyle.styleSemiBold32,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              bookModel.volumeInfo.authors![0],
              textAlign: TextAlign.center,
              style: AppStyle.styleRegular18.copyWith(color: AppColors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            BookInfo(bookModel: bookModel),
            const SizedBox(
              height: 40,
            ),
            BookDetailedPageButton(
              bookModel: bookModel,
            ),
            const SizedBox(
              height: 50,
            ),
            const SafeArea(child: SuggestedBooksComponent())
          ],
        ),
      ),
    );
  }
}
