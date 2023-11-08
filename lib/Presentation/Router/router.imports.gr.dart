// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:bloc_learning/Data/Models/home.model.dart' as _i10;
import 'package:bloc_learning/Presentation/Screens/authScreen/auth.screen.dart'
    as _i1;
import 'package:bloc_learning/Presentation/Screens/generalScreen/bottomNavigationScreen/bottom.navi.bar.screen.dart'
    as _i2;
import 'package:bloc_learning/Presentation/Screens/generalScreen/homeScreen/home.details.dart'
    as _i3;
import 'package:bloc_learning/Presentation/Screens/loginScreen/login.screen.dart'
    as _i4;
import 'package:bloc_learning/Presentation/Screens/onboardScreen/onboard.screen.dart'
    as _i5;
import 'package:bloc_learning/Presentation/Screens/registrationScreen/registration.screen.dart'
    as _i6;
import 'package:bloc_learning/Presentation/Screens/splashScreen/splash.imports.dart'
    as _i7;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    BottomNavigationBarRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavigationBar(),
      );
    },
    HomeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.HomeDetails(
          key: args.key,
          post: args.post,
          imagePath: args.imagePath,
        ),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    OnBoardScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OnBoardScreen(),
      );
    },
    RegistrationScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RegistrationScreen(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
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
/// [_i2.BottomNavigationBar]
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
/// [_i3.HomeDetails]
class HomeDetailsRoute extends _i8.PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    _i9.Key? key,
    required _i10.Post post,
    required String imagePath,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          HomeDetailsRoute.name,
          args: HomeDetailsRouteArgs(
            key: key,
            post: post,
            imagePath: imagePath,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeDetailsRoute';

  static const _i8.PageInfo<HomeDetailsRouteArgs> page =
      _i8.PageInfo<HomeDetailsRouteArgs>(name);
}

class HomeDetailsRouteArgs {
  const HomeDetailsRouteArgs({
    this.key,
    required this.post,
    required this.imagePath,
  });

  final _i9.Key? key;

  final _i10.Post post;

  final String imagePath;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{key: $key, post: $post, imagePath: $imagePath}';
  }
}

/// generated route for
/// [_i4.LoginScreen]
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
/// [_i5.OnBoardScreen]
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
/// [_i6.RegistrationScreen]
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
/// [_i7.SplashScreen]
class SplashScreenRoute extends _i8.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
