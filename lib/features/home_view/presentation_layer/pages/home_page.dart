import 'package:ebook/core/utils/app_style.dart';
import 'package:ebook/features/home_view/presentation_layer/widgets/books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search),
            onPressed: () {},
          ),],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 25,),
            const BooksListView(),
            const SizedBox(height: 45,),
            Text(
              'Best Seller',
              style: AppStyle.styleMedium20,
            ),
            const SizedBox(height: 23,),

          ],
        ),
      ),
    );
  }
}
