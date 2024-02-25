import 'package:ebook/core/utils/app_colors.dart';
import 'package:ebook/features/search/presentation_layer/widgets/search_page_app_bar.dart';
import 'package:ebook/features/search/presentation_layer/widgets/search_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: AppColors.primaryColor,
        )
    );
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: CustomScrollView(
          slivers: <Widget>[
            SearchPageAppBar(),
            SearchPageBody(),
          ],
        ),
      ),
    );
  }
}
