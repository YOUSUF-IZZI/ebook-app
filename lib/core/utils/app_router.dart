import 'package:ebook/features/home_view/presentation_layer/pages/book_detailed_page.dart';
import 'package:go_router/go_router.dart';
import '../../features/home_view/presentation_layer/pages/home_page.dart';

abstract class AppRouter
{
  static const initialRoute = '/';
  static const bookDetailed = '/book-detailed';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: bookDetailed,
        builder: (context, state) => const BookDetailedPage(),
      ),
    ]
  );
}