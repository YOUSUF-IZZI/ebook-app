import 'package:ebook/core/utils/app_router.dart';
import 'package:ebook/core/utils/app_themes.dart';
import 'package:ebook/features/home/presentation_layer/cubits/featured_books/featured_books_cubit.dart';
import 'package:ebook/features/home/presentation_layer/cubits/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const EbookApp());
}


class EbookApp extends StatelessWidget {
  const EbookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewestBooksCubit()..getNewestBooks(),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit()..getFeaturedBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: AppThemes.dark,
      ),
    );
  }
}
