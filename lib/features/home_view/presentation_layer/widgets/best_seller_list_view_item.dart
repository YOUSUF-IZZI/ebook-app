import 'package:ebook/core/utils/app_colors.dart';
import 'package:ebook/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: AspectRatio(
            aspectRatio: 0.73,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781684123247/once-upon-a-story-the-jungle-book-9781684123247_hr.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
            ),
          ),
        ),
        const SizedBox(width: 24,),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harry Potter and the Goblet of Fire',
                style: AppStyle.styleMedium24,
                maxLines: 2,
              ),
              const SizedBox(height: 8),
              Text(
                'J.K. Rowling',
                style: AppStyle.styleRegular14,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '\$ 15.00',
                    style: AppStyle.styleMedium20,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
