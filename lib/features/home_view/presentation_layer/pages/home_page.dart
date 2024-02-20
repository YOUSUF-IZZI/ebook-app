import 'package:ebook/core/utils/app_style.dart';
import 'package:ebook/features/home_view/presentation_layer/widgets/best_seller_list_view.dart';
import 'package:ebook/features/home_view/presentation_layer/widgets/books_list_view.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(child: SizedBox(height: 25,)),
            const SliverToBoxAdapter(child: BooksListView()),
            const SliverToBoxAdapter(child: SizedBox(height: 45,)),
            SliverToBoxAdapter(
              child: Text(
                'Best Seller',
                style: AppStyle.styleMedium20,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 23,)),
            const BestSellerListView()
          ],
        ),
      ),
    );
  }
}
