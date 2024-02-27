import 'package:ebook/features/home/presentation_layer/cubits/featured_books/featured_books_cubit.dart';
import 'package:ebook/features/home/presentation_layer/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.25,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>  Padding(
                padding: const EdgeInsets.only(right: 18),
                child: BookCard(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail ?? 'https://media1.popsugar-assets.com/files/thumbor/zdKJYZCXhjgofBgdN2pgF8GkYqY=/fit-in/792x1182/filters:format_auto():upscale()/2023/10/13/881/n/44498184/2b0dce9d74f4e16e_90202302.jpeg',
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
