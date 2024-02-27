import 'package:ebook/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_style.dart';

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
              decoration: InputDecoration(
                hintText: 'Search for books by title, author, or category',
                hintStyle: AppStyle.styleMedium16,
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
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
