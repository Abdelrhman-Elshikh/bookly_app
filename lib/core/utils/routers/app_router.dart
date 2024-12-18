import 'package:bookly_app/core/utils/routers/routes.dart';
import 'package:bookly_app/feature/home/resentation/view/book_details_view.dart';
import 'package:bookly_app/feature/search/view/search_view.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/feature/home/resentation/view/home_view.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: KSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: KHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: KBookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    ),
    GoRoute(
      path: KSearchView,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
