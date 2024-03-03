import 'package:ebook/core/utils/app_router.dart';
import 'package:ebook/core/utils/app_style.dart';
import 'package:ebook/features/home/domain_layer/book_model/book_model.dart';
import 'package:ebook/features/home/presentation_layer/widgets/book_pricing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsListViewItem extends StatelessWidget {
  const BookDetailsListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRouter.bookDetailed, extra: bookModel),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 0.73,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        bookModel.volumeInfo.imageLinks.thumbnail!),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookModel.volumeInfo.title!,
                  style: AppStyle.styleMedium24,
                  maxLines: 2,
                ),
                const SizedBox(height: 8),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: AppStyle.styleRegular14,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: AppStyle.styleMedium20,
                    ),
                    const Spacer(),
                    BookInfo(
                      bookModel: bookModel,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
