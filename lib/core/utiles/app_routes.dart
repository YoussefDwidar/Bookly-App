import 'package:bookapp/Features/search/presentation/views/search_view.dart';
import 'package:bookapp/Features/splash/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/home/presentation/views/book_details_view.dart';
import '../../Features/splash/presentation/veiw/splash_veiw.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Splashveiw(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
