// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DiaryFormRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiaryFormPage(),
      );
    },
    DiaryListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiaryListPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    TaskFormRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TaskFormPage(),
      );
    },
  };
}

/// generated route for
/// [DiaryFormPage]
class DiaryFormRoute extends PageRouteInfo<void> {
  const DiaryFormRoute({List<PageRouteInfo>? children})
      : super(
          DiaryFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiaryFormRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DiaryListPage]
class DiaryListRoute extends PageRouteInfo<void> {
  const DiaryListRoute({List<PageRouteInfo>? children})
      : super(
          DiaryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiaryListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
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
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TaskFormPage]
class TaskFormRoute extends PageRouteInfo<void> {
  const TaskFormRoute({List<PageRouteInfo>? children})
      : super(
          TaskFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskFormRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
