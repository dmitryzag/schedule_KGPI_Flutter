// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthorScreen(),
      );
    },
    EducationRoute.name: (routeData) {
      final args = routeData.argsAs<EducationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EducationScreen(
          key: args.key,
          faculty: args.faculty,
        ),
      );
    },
    FavoriteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    PDFViewer.name: (routeData) {
      final args = routeData.argsAs<PDFViewerArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PDFViewerGroup(
          key: args.key,
          url: args.url,
        ),
      );
    },
    ScheduleAcademic.name: (routeData) {
      final args = routeData.argsAs<ScheduleAcademicArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ScheduleOfGroup(
          key: args.key,
          academicGroup: args.academicGroup,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SpecialitiesRoute.name: (routeData) {
      final args = routeData.argsAs<SpecialitiesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SpecialitiesScreen(
          key: args.key,
          educationForm: args.educationForm,
          faculty: args.faculty,
        ),
      );
    },
  };
}

/// generated route for
/// [AuthorScreen]
class AuthorRoute extends PageRouteInfo<void> {
  const AuthorRoute({List<PageRouteInfo>? children})
      : super(
          AuthorRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EducationScreen]
class EducationRoute extends PageRouteInfo<EducationRouteArgs> {
  EducationRoute({
    Key? key,
    required Faculty faculty,
    List<PageRouteInfo>? children,
  }) : super(
          EducationRoute.name,
          args: EducationRouteArgs(
            key: key,
            faculty: faculty,
          ),
          initialChildren: children,
        );

  static const String name = 'EducationRoute';

  static const PageInfo<EducationRouteArgs> page =
      PageInfo<EducationRouteArgs>(name);
}

class EducationRouteArgs {
  const EducationRouteArgs({
    this.key,
    required this.faculty,
  });

  final Key? key;

  final Faculty faculty;

  @override
  String toString() {
    return 'EducationRouteArgs{key: $key, faculty: $faculty}';
  }
}

/// generated route for
/// [FavoriteScreen]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PDFViewer]
class PDFViewer extends PageRouteInfo<PDFViewerArgs> {
  PDFViewer({
    Key? key,
    required dynamic url,
    List<PageRouteInfo>? children,
  }) : super(
          PDFViewer.name,
          args: PDFViewerArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'PDFViewer';

  static const PageInfo<PDFViewerArgs> page = PageInfo<PDFViewerArgs>(name);
}

class PDFViewerArgs {
  const PDFViewerArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final dynamic url;

  @override
  String toString() {
    return 'PDFViewerArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [ScheduleAcademic]
class ScheduleAcademic extends PageRouteInfo<ScheduleAcademicArgs> {
  ScheduleAcademic({
    Key? key,
    required AcademicGroup academicGroup,
    List<PageRouteInfo>? children,
  }) : super(
          ScheduleAcademic.name,
          args: ScheduleAcademicArgs(
            key: key,
            academicGroup: academicGroup,
          ),
          initialChildren: children,
        );

  static const String name = 'ScheduleAcademic';

  static const PageInfo<ScheduleAcademicArgs> page =
      PageInfo<ScheduleAcademicArgs>(name);
}

class ScheduleAcademicArgs {
  const ScheduleAcademicArgs({
    this.key,
    required this.academicGroup,
  });

  final Key? key;

  final AcademicGroup academicGroup;

  @override
  String toString() {
    return 'ScheduleAcademicArgs{key: $key, academicGroup: $academicGroup}';
  }
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpecialitiesScreen]
class SpecialitiesRoute extends PageRouteInfo<SpecialitiesRouteArgs> {
  SpecialitiesRoute({
    Key? key,
    required EducationFormModel educationForm,
    required Faculty faculty,
    List<PageRouteInfo>? children,
  }) : super(
          SpecialitiesRoute.name,
          args: SpecialitiesRouteArgs(
            key: key,
            educationForm: educationForm,
            faculty: faculty,
          ),
          initialChildren: children,
        );

  static const String name = 'SpecialitiesRoute';

  static const PageInfo<SpecialitiesRouteArgs> page =
      PageInfo<SpecialitiesRouteArgs>(name);
}

class SpecialitiesRouteArgs {
  const SpecialitiesRouteArgs({
    this.key,
    required this.educationForm,
    required this.faculty,
  });

  final Key? key;

  final EducationFormModel educationForm;

  final Faculty faculty;

  @override
  String toString() {
    return 'SpecialitiesRouteArgs{key: $key, educationForm: $educationForm, faculty: $faculty}';
  }
}
