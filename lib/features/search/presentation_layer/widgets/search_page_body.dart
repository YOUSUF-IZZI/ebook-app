import 'package:ebook/core/utils/app_colors.dart';
import 'package:ebook/features/home/presentation_layer/widgets/best_seller_list_view_item.dart';
import 'package:ebook/features/search/presentation_layer/cubits/search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            ),
          );
        } else if (state is SearchSuccess) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: NewestBooksListViewItem(
                bookModel: state.books[index],
              ),
            ),
          );
        } else if (state is SearchFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                state.message,
                style: const TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        } else {
          return SliverFillRemaining(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                    child: SvgPicture.asset(
                        'assets/images/curiosity search-pana.svg')),
              ),
            ),
          );
        }
      },
    );
  }
}
