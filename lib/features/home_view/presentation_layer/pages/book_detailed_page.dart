import 'package:ebook/core/utils/app_colors.dart';
import 'package:ebook/core/utils/app_style.dart';
import 'package:ebook/features/home_view/presentation_layer/widgets/book_card.dart';
import 'package:ebook/features/home_view/presentation_layer/widgets/book_pricing.dart';
import 'package:ebook/features/home_view/presentation_layer/widgets/suggested_books_component.dart';
import 'package:flutter/material.dart';
import '../widgets/book_detailed_page_app_bar.dart';
import '../widgets/book_detailed_page_button.dart';


class BookDetailedPage extends StatelessWidget {
  const BookDetailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BookDetailedPageAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            const Center(child: BookCard(height: 0.35,)),
            const SizedBox(height: 30,),
            Text(
              'The Jungle Book',
              style: AppStyle.styleSemiBold32,
            ),
            const SizedBox(height: 13,),
            Text(
              'Rudyard Kipling',
              textAlign: TextAlign.center,
              style: AppStyle.styleRegular18.copyWith(color: AppColors.grey),
            ),
            const SizedBox(height: 20,),
            const BookPricing(),
            const SizedBox(height: 40,),
            const BookDetailedPageButton(),
            const SizedBox(height: 50,),
            const SuggestedBooksComponent()
          ],
        ),
      ),
    );
  }
}






