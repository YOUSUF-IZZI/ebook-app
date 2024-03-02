import 'package:ebook/features/home/domain_layer/book_model/book_model.dart';
import 'package:ebook/features/home/presentation_layer/cubits/similar_books/similar_books_cubit.dart';
import 'package:ebook/features/home/presentation_layer/pages/book_detailed_page.dart';
import 'package:ebook/features/home/presentation_layer/pages/home_page.dart';
import 'package:ebook/features/search/presentation_layer/pages/search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const initialRoute = '/';
  static const bookDetailed = '/book-detailed';
  static const search = '/search';

  static final router = GoRouter(routes: [
    GoRoute(
      path: initialRoute,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: bookDetailed,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit()..getSimilarBooks(),
        child: BookDetailedPage(bookModel: state.extra as BookModel),
      ),
    ),
    GoRoute(
      path: search,
      builder: (context, state) => const SearchPage(),
    ),
  ]);
}
