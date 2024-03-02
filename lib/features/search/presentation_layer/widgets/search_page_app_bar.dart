import 'package:ebook/core/utils/app_colors.dart';
import 'package:ebook/features/search/presentation_layer/cubits/search/search_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_style.dart';

final TextEditingController _searchController = TextEditingController();

class SearchPageAppBar extends StatelessWidget {
  const SearchPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          ' 🔎 for 📖 ',
          style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium?.color,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            _searchController.text = '';
            context.pop();
          },
        ),
        floating: true,
        expandedHeight: MediaQuery.sizeOf(context).height * 0.2,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              style: AppStyle.styleMedium16.copyWith(color: Colors.black),
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for books by category',
                hintStyle: AppStyle.styleMedium16,
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                  ),
                  onPressed: () {
                    if (_searchController.text.isNotEmpty) {
                      BlocProvider.of<SearchCubit>(context)
                          .searchBooks(query: _searchController.text);
                    }
                  },
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ));
  }
}
