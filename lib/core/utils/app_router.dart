import 'package:ebook/features/home/presentation_layer/pages/book_detailed_page.dart';
import 'package:ebook/features/home/presentation_layer/pages/home_page.dart';
import 'package:ebook/features/search/presentation_layer/pages/search_page.dart';
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
      builder: (context, state) => const BookDetailedPage(),
    ),
    GoRoute(
      path: search,
      builder: (context, state) => const SearchPage(),
    ),
  ]);
}
