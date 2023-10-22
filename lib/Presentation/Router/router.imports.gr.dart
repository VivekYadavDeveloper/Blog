// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:bloc_learning/Presentation/Screens/authScreen/auth.screen.dart'
    as _i3;
import 'package:bloc_learning/Presentation/Screens/generalScreen/bottomNavigationScreen/bottom.navi.bar.screen.dart'
    as _i6;
import 'package:bloc_learning/Presentation/Screens/generalScreen/homeScreen/home.details.dart'
    as _i7;
import 'package:bloc_learning/Presentation/Screens/loginScreen/login.screen.dart'
    as _i5;
import 'package:bloc_learning/Presentation/Screens/onboardScreen/onboard.screen.dart'
    as _i1;
import 'package:bloc_learning/Presentation/Screens/registrationScreen/registration.screen.dart'
    as _i4;
import 'package:bloc_learning/Presentation/Screens/splashScreen/splash.imports.dart'
    as _i2;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    OnBoardScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OnBoardScreen(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashScreen(),
      );
    },
    AuthScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthScreen(),
      );
    },
    RegistrationScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegistrationScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    BottomNavigationBarRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BottomNavigationBar(),
      );
    },
    HomeDetailsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeDetails(),
      );
    },
  };
}

/// generated route for
/// [_i1.OnBoardScreen]
class OnBoardScreenRoute extends _i8.PageRouteInfo<void> {
  const OnBoardScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OnBoardScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardScreenRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SplashScreen]
class SplashScreenRoute extends _i8.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthScreen]
class AuthScreenRoute extends _i8.PageRouteInfo<void> {
  const AuthScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AuthScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthScreenRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegistrationScreen]
class RegistrationScreenRoute extends _i8.PageRouteInfo<void> {
  const RegistrationScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegistrationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationScreenRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginScreenRoute extends _i8.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BottomNavigationBar]
class BottomNavigationBarRoute extends _i8.PageRouteInfo<void> {
  const BottomNavigationBarRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BottomNavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeDetails]
class HomeDetailsRoute extends _i8.PageRouteInfo<void> {
  const HomeDetailsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeDetailsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
