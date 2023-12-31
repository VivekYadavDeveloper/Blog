// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:bloc_learning/Data/Models/home.model.dart' as _i14;
import 'package:bloc_learning/Data/Models/tags.model.dart' as _i12;
import 'package:bloc_learning/Presentation/Screens/authScreen/auth.screen.dart'
    as _i2;
import 'package:bloc_learning/Presentation/Screens/generalScreen/bottomNavigationScreen/bottom.navi.bar.screen.dart'
    as _i3;
import 'package:bloc_learning/Presentation/Screens/generalScreen/homeScreen/home.details.dart'
    as _i4;
import 'package:bloc_learning/Presentation/Screens/generalScreen/tagsScreen/add.tags.screen.dart'
    as _i1;
import 'package:bloc_learning/Presentation/Screens/generalScreen/tagsScreen/tags.screen.dart'
    as _i9;
import 'package:bloc_learning/Presentation/Screens/generalScreen/tagsScreen/update.tags.screen.dart'
    as _i10;
import 'package:bloc_learning/Presentation/Screens/loginScreen/login.screen.dart'
    as _i5;
import 'package:bloc_learning/Presentation/Screens/onboardScreen/onboard.screen.dart'
    as _i6;
import 'package:bloc_learning/Presentation/Screens/registrationScreen/registration.screen.dart'
    as _i7;
import 'package:bloc_learning/Presentation/Screens/splashScreen/splash.imports.dart'
    as _i8;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AddTagsScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<_i12.TagsModel>(
        routeData: routeData,
        child: const _i1.AddTagsScreen(),
      );
    },
    AuthScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    BottomNavigationBarRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BottomNavigationBar(),
      );
    },
    HomeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HomeDetails(
          key: args.key,
          post: args.post,
          imagePath: args.imagePath,
        ),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    OnBoardScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnBoardScreen(),
      );
    },
    RegistrationScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegistrationScreen(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashScreen(),
      );
    },
    TagsScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.TagsScreen(),
      );
    },
    UpdateTagsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateTagsScreenRouteArgs>();
      return _i11.AutoRoutePage<_i12.TagsModel>(
        routeData: routeData,
        child: _i10.UpdateTagsScreen(
          key: args.key,
          tag: args.tag,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTagsScreen]
class AddTagsScreenRoute extends _i11.PageRouteInfo<void> {
  const AddTagsScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AddTagsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTagsScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthScreenRoute extends _i11.PageRouteInfo<void> {
  const AuthScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AuthScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BottomNavigationBar]
class BottomNavigationBarRoute extends _i11.PageRouteInfo<void> {
  const BottomNavigationBarRoute({List<_i11.PageRouteInfo>? children})
      : super(
          BottomNavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeDetails]
class HomeDetailsRoute extends _i11.PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    _i13.Key? key,
    required _i14.Post post,
    required String imagePath,
    List<_i11.PageRouteInfo>? children,
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

  static const _i11.PageInfo<HomeDetailsRouteArgs> page =
      _i11.PageInfo<HomeDetailsRouteArgs>(name);
}

class HomeDetailsRouteArgs {
  const HomeDetailsRouteArgs({
    this.key,
    required this.post,
    required this.imagePath,
  });

  final _i13.Key? key;

  final _i14.Post post;

  final String imagePath;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{key: $key, post: $post, imagePath: $imagePath}';
  }
}

/// generated route for
/// [_i5.LoginScreen]
class LoginScreenRoute extends _i11.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnBoardScreen]
class OnBoardScreenRoute extends _i11.PageRouteInfo<void> {
  const OnBoardScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OnBoardScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegistrationScreen]
class RegistrationScreenRoute extends _i11.PageRouteInfo<void> {
  const RegistrationScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RegistrationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashScreen]
class SplashScreenRoute extends _i11.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.TagsScreen]
class TagsScreenRoute extends _i11.PageRouteInfo<void> {
  const TagsScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TagsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagsScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UpdateTagsScreen]
class UpdateTagsScreenRoute
    extends _i11.PageRouteInfo<UpdateTagsScreenRouteArgs> {
  UpdateTagsScreenRoute({
    _i13.Key? key,
    required _i12.Tag tag,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          UpdateTagsScreenRoute.name,
          args: UpdateTagsScreenRouteArgs(
            key: key,
            tag: tag,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateTagsScreenRoute';

  static const _i11.PageInfo<UpdateTagsScreenRouteArgs> page =
      _i11.PageInfo<UpdateTagsScreenRouteArgs>(name);
}

class UpdateTagsScreenRouteArgs {
  const UpdateTagsScreenRouteArgs({
    this.key,
    required this.tag,
  });

  final _i13.Key? key;

  final _i12.Tag tag;

  @override
  String toString() {
    return 'UpdateTagsScreenRouteArgs{key: $key, tag: $tag}';
  }
}
