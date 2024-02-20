import 'package:ebook/core/utils/app_style.dart';
import 'package:ebook/features/home_view/presentation_layer/widgets/book_card.dart';
import 'package:flutter/material.dart';


class SuggestedBooksComponent extends StatelessWidget {
  const SuggestedBooksComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also like',
            style: AppStyle.styleMedium20,
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 8),
                child: BookCard(height: 0.15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
