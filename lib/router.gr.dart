// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$Router extends RootStackRouter {
  // ignore: unused_element
  _$Router({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    PageARoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageA(),
      );
    },
    PageAARoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageAA(),
      );
    },
    PageABRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageAB(),
      );
    },
    ShellARoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShellA(),
      );
    },
  };
}

/// generated route for
/// [PageA]
class PageARoute extends PageRouteInfo<void> {
  const PageARoute({List<PageRouteInfo>? children})
      : super(
          PageARoute.name,
          initialChildren: children,
        );

  static const String name = 'PageARoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageAA]
class PageAARoute extends PageRouteInfo<void> {
  const PageAARoute({List<PageRouteInfo>? children})
      : super(
          PageAARoute.name,
          initialChildren: children,
        );

  static const String name = 'PageAARoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageAB]
class PageABRoute extends PageRouteInfo<void> {
  const PageABRoute({List<PageRouteInfo>? children})
      : super(
          PageABRoute.name,
          initialChildren: children,
        );

  static const String name = 'PageABRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShellA]
class ShellARoute extends PageRouteInfo<void> {
  const ShellARoute({List<PageRouteInfo>? children})
      : super(
          ShellARoute.name,
          initialChildren: children,
        );

  static const String name = 'ShellARoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
