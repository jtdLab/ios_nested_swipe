import 'package:auto_route/auto_route.dart';
import 'package:ios_nested_swipe/main.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: null)
class Router extends _$Router {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: PageARoute.page,
        ),
        AutoRoute(
          path: '/a',
          page: ShellARoute.page,
          children: [
            AutoRoute(
              path: '',
              page: PageAARoute.page,
            ),
          ],
        ),
      ];
}

@RoutePage()
class ShellA extends AutoRouter {
  const ShellA({super.key});
}
