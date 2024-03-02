import 'package:ebook/core/utils/app_style.dart';
import 'package:ebook/features/home/presentation_layer/cubits/similar_books/similar_books_cubit.dart';
import 'package:ebook/features/home/presentation_layer/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
            builder: (context, state) {
              if (state is SimilarBooksSuccess) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.15,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: BookCard(
                        imageUrl:
                            state.books[index].volumeInfo.imageLinks.thumbnail!,
                        height: 0.15,
                      ),
                    ),
                  ),
                );
              } else if (state is SimilarBooksFailure) {
                return Center(child: Text(state.errMessage));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )
        ],
      ),
    );
  }
}
