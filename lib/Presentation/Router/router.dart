part of 'router.imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashScreenRoute.page,
          path: "/",
          initial: true,
        ),
        AutoRoute(page: OnBoardScreenRoute.page),
        AutoRoute(page: AuthScreenRoute.page),
        AutoRoute(page: LoginScreenRoute.page),
        AutoRoute(page: RegistrationScreenRoute.page),
        AutoRoute(page: BottomNavigationBarRoute.page),
        AutoRoute(page: HomeDetailsRoute.page),
        AutoRoute(page: AddTagsScreenRoute.page),
      ];
}
