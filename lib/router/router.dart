import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule/features/author/view/author_screen.dart';
import 'package:schedule/features/education_form/view/education_screen.dart';
import 'package:schedule/features/favorites/view/favorite_schedule.dart';
import 'package:schedule/features/home/view/home_screen.dart';
import 'package:schedule/features/pdf_view/view/pdf_view.dart';
import 'package:schedule/features/schedule/view/schedule.dart';
import 'package:schedule/features/search/view/search_screen.dart';
import 'package:schedule/features/specialities/view/specialities_list.dart';
import 'package:schedule/repositories/schedule/models/academic_group.dart';
import 'package:schedule/repositories/schedule/models/education_form_model.dart';

import '../repositories/schedule/models/faculties.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
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
        AutoRoute(
          page: EducationRoute.page,
          path: '/education_form',
        ),
        AutoRoute(
          page: SpecialitiesRoute.page,
          path: '/specialities_list',
        ),
        AutoRoute(
          page: ScheduleAcademic.page,
          path: '/schedule',
        ),
        AutoRoute(
          page: PDFViewer.page,
          path: '/schedule_group',
        ),
      ];
}
