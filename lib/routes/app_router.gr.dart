// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:fire2/channel_history.dart' as _i1;
import 'package:fire2/contact_us.dart' as _i2;
import 'package:fire2/homepage.dart' as _i3;
import 'package:fire2/login.dart' as _i4;
import 'package:fire2/new_channel.dart' as _i5;
import 'package:fire2/signup.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    ChannelHistory.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChannelHistory(),
      );
    },
    ContactUs.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ContactUs(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LoginPage(),
      );
    },
    NewChannel.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewChannel(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SignupPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChannelHistory]
class ChannelHistory extends _i7.PageRouteInfo<void> {
  const ChannelHistory({List<_i7.PageRouteInfo>? children})
      : super(
          ChannelHistory.name,
          initialChildren: children,
        );

  static const String name = 'ChannelHistory';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ContactUs]
class ContactUs extends _i7.PageRouteInfo<void> {
  const ContactUs({List<_i7.PageRouteInfo>? children})
      : super(
          ContactUs.name,
          initialChildren: children,
        );

  static const String name = 'ContactUs';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewChannel]
class NewChannel extends _i7.PageRouteInfo<void> {
  const NewChannel({List<_i7.PageRouteInfo>? children})
      : super(
          NewChannel.name,
          initialChildren: children,
        );

  static const String name = 'NewChannel';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SignupPage]
class SignupRoute extends _i7.PageRouteInfo<void> {
  const SignupRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
