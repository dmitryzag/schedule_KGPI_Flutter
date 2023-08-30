import 'package:auto_route/auto_route.dart';
import 'package:schedule/features/author/view/author_screen.dart';
import 'package:schedule/features/features.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: FavoriteRoute.page,
              path: 'favorites',
            ),
            AutoRoute(
              page: SearchRoute.page,
              path: 'search',
            ),
            AutoRoute(
              page: AuthorRoute.page,
              path: 'author',
            ),
          ],
        ),
      ];
}
